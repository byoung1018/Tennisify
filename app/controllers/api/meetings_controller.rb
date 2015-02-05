module Api
  class MeetingsController < ApiController
  #todo errors for create and fail
    def create
      @meeting = Meeting.new(meeting_params)
      @meeting.organizer_id = current_user.id
      if @meeting.save
        render json: @meeting
      else
        render json: @meeting.errors.full_messages, status: :unprocessable_entity
      end
    end



    def index
      @meetings = Meeting.all
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
        params.require(:meeting).permit(:title, :about, :date, :time,)
      end

  end
end