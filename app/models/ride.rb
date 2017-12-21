class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
    string = "Sorry."

    if attraction.tickets > user.tickets
      string += " You do not have enough tickets the #{attraction.name}."
    end

    if attraction.min_height > user.height
      string += " You are not tall enough to ride the #{attraction.name}."
    end

    return string if string != "Sorry."

    user.tickets -= attraction.tickets

    user.nausea += attraction.nausea_rating

    user.happiness += attraction.happiness_rating
  
    user.save

    nil

  end

end
