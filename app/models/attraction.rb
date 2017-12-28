class Attraction < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :min_height, presence: true

  has_many :rides
  has_many :users, through: :rides
end
