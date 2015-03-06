class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :button_state

  def button_state
    return "disabled" if current_user.nil?
    ""
  end

  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def logged_in?
    !current_user.nil?
  end

  def login_user!(user)
    session[:session_token] = user.reset_session_token!
  end

  def logout_user!
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def require_logged_in
    redirect_to new_session_url unless logged_in?
  end

  def twilio_client
    @client ||= Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"])

  end

end
