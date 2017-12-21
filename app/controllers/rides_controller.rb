class RidesController < ApplicationController

  def create
    @user = User.find(session[:user_id])
    @ride = Ride.new(attraction_id: params[:ride][:attraction_id], user_id: @user.id)

    @ride.save

    flash[:msg] = @ride.take_ride
    redirect_to user_path(@user)
  end
end
