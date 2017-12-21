class RidesController < ApplicationController

  def create
    
    @user = User.find(params[:user_id])
    @attraction = Attraction.find(params[:attraction_id])
    @ride = Ride.create(user: @user, attraction: @attraction)
    if @ride.take_ride
      flash[:msg] = [@ride.take_ride]
    else
      flash[:msg] = ["Thanks for riding the #{@attraction.name}!"]
    end
    redirect_to user_path(@user)
  end

end
