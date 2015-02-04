module Api
  class MeetingsController < ApiController
  #todo errors
    def create
      @meeting = Meeting.new(meeting_params)
      @meeting.organizer_id = current_user.id
      if @meeting.save
        render json: @meeting
      else
        puts "there"
        render json: @meeting.errors.full_messages, status: :unprocessable_entity
      end
    end

    def meeting_params
      params.require(:meeting).permit(:title, :about, :date, :time,)
    end

    def index
      @meetings = Meeting.all
    end

    def show
      @meeting = Meeting.find(params[:id])
    end

  end
end
