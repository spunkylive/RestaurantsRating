class City < ActiveRecord::Base

  # Association With RestroAddress
  has_many :restro_addresses

end
