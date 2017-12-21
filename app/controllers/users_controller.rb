class UsersController < ApplicationController
  
  def index
    @users = User.all
  end


  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end


  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    user = User.new(user_params)
    if user.valid?
      @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end


  private


  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :happiness, :tickets, :height, :nausea)
  end
end
