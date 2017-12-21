class UsersController < ApplicationController

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
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def update

  end

  def edit

  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :happiness, :tickets, :height, :nausea, :admin)
  end

end
