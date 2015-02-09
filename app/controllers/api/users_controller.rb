module Api
  class UsersController < ApiController
    # todo verify email is an email
    wrap_parameters :user, {include: [:username, :fname, :lname, :password,
                                :email, :level, :location, :age, :reveal_ge]}
    def create
      @user = User.new(user_params)
      puts @user.reveal_age
      if @user.reveal_age == "Yes"
        @user.reveal_age = true
      else
        @user.reveal_age = false
      end

      if @user.save
        login_user!(@user)
        render json: @user
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
      params.require(:user).permit(:username, :fname, :lname, :password,
                      :email, :level, :location, :age, :reveal_age)
    end
  end
end
