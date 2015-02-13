module Api
  class UsersController < ApiController
    # todo verify email is an email
    wrap_parameters :user, {include: [:username, :fname, :lname, :password, :reveal_age, :gender,
      :email, :level, :area, :age]}
    def create
      @user = User.new(user_params)
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
      @user = User.find(params[:id])
      puts "here"
      puts "here"
      puts "here"
      puts "here"
      puts "here"
      puts @user.fname
    end

    private
    def user_params
      params.require(:user).permit(:username, :fname, :lname, :password, :reveal_age, :gender,
                      :email, :level, :area, :age)
    end
  end
end
