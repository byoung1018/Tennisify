class SessionsController < ApplicationController
  def create
    user = User.find_by_credentials(
      params[:user][:login],
      params[:user][:password]
    )
    if user.nil?
      render json: { errors: ["Invalid username or password"]}, status: 422
    else
      login_user!(user)
      render json: root_url, status: 200
    end
  end

  def destroy
    logout_user!
    redirect_to root_url
  end

  def new
  end
end
