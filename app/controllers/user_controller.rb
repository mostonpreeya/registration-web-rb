class UserController < ApplicationController

  def index
    @user = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: 'ลบผู้ใช้เรียบร้อยแล้ว'
  end
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



  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :birthday, :gender, :email, :phone, :subject)
  end

end
