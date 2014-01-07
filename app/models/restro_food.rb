class RestroFood < ActiveRecord::Base

  # Association With Restro
  belongs_to :restro
  # Association With Food
  belongs_to :food
end
