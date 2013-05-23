class ReservationsController < ApplicationController
  before_filter :find_reservation, only: [:show, :edit, :update, :destroy]
  def index
    @reservations = Reservation.all
  end

  def show
  end

  def new
    @reservation = Reservation.new
    @customers = Customer.all
    @restaurants = Restaurant.all
  end

  def create
    @reservation = Reservation.new(params[:reservation])
    if @reservation.save
      flash[:notice] = "You have created a new reservation."
      redirect_to @reservation
    else
      flash[:alert] = "You have not created a new reservation."
      render action: "new"
    end
  end

  def edit
    @customers = Customer.all
    @restaurants = Restaurant.all
  end

  def update
    if @reservation.update_attributes(params[:reservation])
      flash[:notice] = "You have updated your reservation."
      redirect_to @reservation
    else
      flash[:alert] = "You have not updated your reservation."
      render action: "edit"
    end
  end

  def destroy
    flash[:notice] = "Your reservation has been deleted."
    redirect_to root_path
  end

  private

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end
end
