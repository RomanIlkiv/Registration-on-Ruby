class UsersController < ApplicationController
  def home
  end
  def new
  	@user = User.new
  end
  def regfail
  end
  def show
    @user = User.find(params[:id])
  end
  def create
  	@user = User.new(user_params)
  	if @user.save
      sign_in @user
  		redirect_to @user
  	else
  		render "new"
  	end
  end
  private
  def user_params
  	params.require(:user).permit(:name, :surname, :age, :email, :password, :password_confirmation, :sex, :phone, :status)
  end
end