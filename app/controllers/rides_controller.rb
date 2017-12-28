class RidesController < ApplicationController
  def create
    @attraction = Attraction.find(params[:attraction_id])
    @ride = Ride.new(user: current_user, attraction: @attraction)
    # byebug
    if @ride.take_ride.class == String
      flash[:msg] = [@ride.take_ride]
    else
      flash[:msg] = ["Thanks for riding the #{@attraction.name}!"]
    end

    redirect_to user_path(current_user)
  end
end
