class RidesController < ApplicationController

  def new

  end

  def create
    #
    @user = current_user
    #
    # take_ride(@user, @attraction)
    # if
    #   #create the ride, redirect to a ride page?
    #
    # else
    #   #you're too short!
    #   redirect_to user_path(@user)
    # end
  end

end
