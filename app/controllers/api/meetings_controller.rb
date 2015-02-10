module Api
  class MeetingsController < ApiController
  #todo errors for create and fail
    # def initialize
    #   @_meeting_fields =
    # end
    def create
      @meeting = Meeting.new(meeting_params)
      @meeting.organizer_id = current_user.id
      if @meeting.save
        self.create_associations
        render json: @meeting
      else
        render json: { errors: @meeting.errors.full_messages }, status: 422
      end
    end




    def index
      if params[:filter]
        puts filter_params
        @meetings = Meeting.filter(filter_params)
      else
        @meetings = Meeting.all
      end
    end

    def show
      @meeting = Meeting.find(params[:id])
      @current_user_response = @meeting.current_user_response(current_user.id)
    end

    def update
      @meeting = Meeting.find(params[:id])

      if @meeting.update(meeting_params)
        self.create_associations
        self.destroy_associations
        render json: @meeting
        puts "updated"
      else
        puts "fail"
        render json: @meeting.errors.full_messages, status: 422
      end
    end

    def create_associations
      self.create_association_entry("level")
      self.create_association_entry("gender")
      self.create_association_entry("age_group")
    end

    def create_association_entry(attr)
      entries = params[attr.pluralize]
      return unless entries
      attr_class = attr.camelize.constantize
      association_class = "Allowed#{attr.camelize}".constantize
      entries.each do |entry|
        attr_id = attr_class.find_by(attr => entry).id
        association_class.create!({meeting_id: @meeting.id, "#{attr}_id" => attr_id})
      end
    end

    def destroy_associations
      self.destroy_association_entries("level")
      self.destroy_association_entries("gender")
      self.destroy_association_entries("age_group")
    end

    def destroy_association_entries(attr)
      existing_entries = @meeting.send("allowed_#{attr}".pluralize)
      existing_entries.each do |existing_entry|
        existing_attr_model = existing_entry.send(attr)
        if existing_attr_model.nil?
          existing_entry.destroy
          next
        end
        existing_attr = existing_attr_model.send(attr)
        if !(params[attr.pluralize].include?(existing_attr))
          existing_entry.destroy
        end
      end
    end

    private

      def meeting_params
        params.require(:meeting).permit(:date, :time, :max_players, :title,
                    :about, :age_groups, :levels, :location, :public)
      end

      def filter_params
        params.require(:filter).permit(:date, :time, :max_players, :title,
                    :about, :age_groups, :levels, :location, :public, :genders)
      end

  end
end
