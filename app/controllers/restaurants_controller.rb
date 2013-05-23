class RestaurantsController < ApplicationController
  before_filter :find_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      flash[:notice] = "You have created a new restaurant."
      redirect_to restaurants_path
    else
      flash[:alert] = "You have not created a new restaurant."
      render action: "new"
    end
  end

  def edit
  end

  def update
    if @restaurant.update_attributes(params[:restaurant])
      flash[:notice] = "You have updated the restaurant."
      redirect_to restaurants_path
    else
      flash[:alert] = "You have not updated the restaurant."
      render action: "edit"
    end
  end

  def destroy
    @restaurant.destroy
    flash[:notice] = "The restaurant has been deleted."
    redirect_to root_path
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
