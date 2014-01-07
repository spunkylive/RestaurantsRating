class RestroAddress < ActiveRecord::Base

  # Association With Restro
  belongs_to :restro

  # Association With Location
  belongs_to :location

  # Association With City
  belongs_to :city
end
