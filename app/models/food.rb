class Food < ActiveRecord::Base

  # Association With Restro & RestroFood
  has_many :restro_foods
  has_many :restros, through: :restro_foods
end
