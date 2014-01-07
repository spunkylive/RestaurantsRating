namespace :get do

  task :restro_details => :environment do
    File.open("public/Restaurants.txt", "r").each_line do |line|
      line = line.split(",")
      textResto = line[0].squeeze(' ').strip
      textPlace = line[1]
      textFoods = line[2]
      textAddress = line[3]
      textCity = line[4].squeeze(' ').strip
      restaurant = Restro.create(:name => textResto)

      place = Location.find_by_name textPlace
      if place.blank?
        location = Location.create(:name => textPlace)
      else
        location = place
      end


      restroCity = City.find_by_name textCity
      if restroCity.blank?
        city = City.create(:name => textCity)
      else
        city = restroCity
      end

      restroAddress = RestroAddress.create(
          :addr => textAddress,
          :restro_id => restaurant.id,
          :location_id => location.id,
          :city_id => city.id
      )

      textFoods = textFoods.split(" ")
      textFoods = textFoods.flatten

      textFoods.each do |food|
        restroFood = Food.find_by_name food
        if restroFood.blank?
          menu = Food.create(:name => food)
        else
          menu = restroFood
        end

        RestroFood.create(
            :restro_id => restaurant.id,
            :food_id => menu.id
        )
      end

    end

  end

end