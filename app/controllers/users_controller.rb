class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    valid_pass = params[:password_digest] == params[:password_confirmation]
    if @user.save && valid_pass
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end

end
