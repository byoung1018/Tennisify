module Api
  class ResponsesController < ApiController

    def create
      @response = Response.new(response_params)
      @response.respondent_id = current_user.id
      if @response.save
        render json: @response.meeting.current_user_response(current_user.id)
      else
        render json: @response.errors.full_messages
      end
    end


    private
    def response_params
      params.require(:response).permit(:meeting_id, :response_status)
    end
  end
end
