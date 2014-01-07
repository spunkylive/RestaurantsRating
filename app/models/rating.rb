class Rating < ActiveRecord::Base

  #Association With User
  belongs_to :user
  #Association With Restro
  belongs_to :restro
end
