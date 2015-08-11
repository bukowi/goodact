class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(signup_params)
    if @user.save
      redirect_to user_path #does this work???
    else
      render 'new'
  end



  def show
  end

  private
  def signup_params
    params.require(:user).permit(:name)
  end

end