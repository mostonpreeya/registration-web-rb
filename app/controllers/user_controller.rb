class UserController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.all
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end
  def user_params
    params.require(:user).permit(:firstname, :lastname, :birthday, :gender, :email, :phone, :subject)
  end

end
