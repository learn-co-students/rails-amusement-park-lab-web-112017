class User < ActiveRecord::Base
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if self.happiness == nil || self.nausea == nil
       "sad"
    elsif self.happiness < self.nausea
      "sad"
    else
      "happy"
    end
  end
end
