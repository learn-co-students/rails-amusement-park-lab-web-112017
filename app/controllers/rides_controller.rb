class RidesController < ApplicationController

  def create
    @ride = Ride.new(params.require(:ride).permit(:attraction_id, :user_id))

    @ride.save

    flash[:msg] = @ride.take_ride
    redirect_to user_path(current_user)
  end
end
