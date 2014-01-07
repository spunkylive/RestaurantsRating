class Restro < ActiveRecord::Base


  # Association With RestroAddress
  has_one :restro_address

  # Association With Food & RestroFood
  has_many :restro_foods
  has_many :foods, through: :restro_foods

  #Association With Ratings & User
  has_many :ratings
  has_many :users, through: :ratings

end
