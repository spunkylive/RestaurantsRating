class HomeController < ApplicationController

  def index
  end


  def search
    @search = params[:search]
    @restro = Restro.where("name ilike ?", "%#{params[:search]}%")
  end

  def show
    @restro = Restro.find params[:id]
    #rating = @restro.ratings.sum(:rating)
    # render :text => rating and return
  end

  def location
    @location = Location.find params[:id]
  end

  def food
    @food = Food.find params[:id]
  end

  def city
    @city = City.find params[:id]
  end

  def comment
    @restro = Restro.find params[:id]
    Rating.create(
        :comment => params[:message],
        :rating => params[:rating].to_i,
        :restro_id => @restro.id,
        :user_id => current_user.id
    )

    render  :action => 'show' ,:id => @restro.id
  end



end
