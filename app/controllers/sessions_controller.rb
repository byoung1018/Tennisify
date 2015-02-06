class SessionsController < ApplicationController
  def create
    user = User.find_by_credentials(
      params[:user][:login],
      params[:user][:password]
    )
    if user.nil?
      flash.now[:errors] = ["Invalid username or password"]
      render :new
    else
      login_user!(user)
      redirect_to root_url
    end
  end

  def destroy
    logout_user!
    redirect_to new_session_url
  end

  def new
  end
end
