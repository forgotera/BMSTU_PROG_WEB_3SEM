class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to signin_path
    else
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(:login, :password,:password_digest)
  end

end
