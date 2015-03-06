require 'twilio-ruby'

module Api
  class VerifyPhoneController < ApplicationController
    def create
      @client = Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"])

      caller_id = @client.account.outgoing_caller_ids.create(:friendly_name => "My actual cell number",
      :phone_number => current_user.phone_number)
      render json: { validation_code: caller_id.validation_code }
    end
  end
end
