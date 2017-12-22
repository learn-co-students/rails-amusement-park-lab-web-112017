class SessionController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create

    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error] = ["Name and password do not match"]
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
