require 'twilio-ruby'

module Api
  class VerifyPhoneController < ApplicationController
    def create
      @client = Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"])

      caller_id = @client.account.outgoing_caller_ids.create(friendly_name: current_user.username,
                phone_number: current_user.phone_number,
                status_callback: "http://www.tennisify.net/api/verify_phone/#{current_user.id}",
                status_callback_method: "put"
      )
      render json: { validation_code: caller_id.validation_code }
    end

    def update
      user = User.find(params[:id])
      user.update!({phone_status: "verified"})
    end
  end
end
