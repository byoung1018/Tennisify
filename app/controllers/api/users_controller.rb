module Api
  class UsersController < ApiController
    # todo verify email is an email
    wrap_parameters :user, {include: [:username, :password, :email, :fname, :lname]}
    def create
      @user = User.new(user_params)

      if @user.save
        login_user!(@user)
        redirect_to user_url(@user)
      else
        render json: { errors: @user.errors.full_messages }, status: 422
      end
    end

    def new
      @user = User.new
    end

    def show
      @user = params[:id]
    end

    private
    def user_params
      params.require(:user).permit(:username, :password, :email, :fname, :lname)
    end
  end
end
