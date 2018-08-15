class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create!(tasks_params)
    redirect_to root_path
  end

  private

  def tasks_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end


