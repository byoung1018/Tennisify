module Api
  class MeetingsController < ApiController
  #todo errors for create and fail
    def create
      @meeting = Meeting.new(meeting_params)
      @meeting.organizer_id = current_user.id
      puts "meeting params"
      puts meeting_params
      puts "params"
      puts params
      if @meeting.save
        render json: @meeting
      else
        render json: { errors: @meeting.errors.full_messages }, status: 422
      end
    end



    def index
      if params[:filter]
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
      puts meeting_params
      if @meeting.update(meeting_params)
        render json: @meeting
        puts "updated"
      else
        puts "fail"
        render json: @meeting.errors.full_messages, status: :unprocessable_entity
      end

    end

    private
      def meeting_params
        params.require(:meeting).permit(:date, :time, :max_players, :title,
                    :about, :age_groups, :level, :location, :public, :genders)
      end

      def filter_params
        params.require(:filter).permit(:date, :time, :max_players, :title,
                    :about, :age_groups, :level, :location, :public, :genders)
      end

  end
end
