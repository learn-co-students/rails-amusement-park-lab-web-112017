class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :attraction



  def take_ride
    user = self.user
    att = self.attraction

    if user.tickets < att.tickets && user.height < att.min_height
      "Sorry. You do not have enough tickets the Roller Coaster. You are not tall enough to ride the Roller Coaster."
    elsif user.tickets < att.tickets
      "Sorry. You do not have enough tickets the Roller Coaster."
    elsif user.height < att.min_height
      "Sorry. You are not tall enough to ride the Roller Coaster."
    else
      user.tickets -= att.tickets
      user.happiness += att.happiness_rating
      user.nausea += att.nausea_rating
      user.save
    end
  end


end
