class CustomersController < ApplicationController

  before_filter :find_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      flash[:notice] = "You have created a new customer."
      redirect_to @customer
    else
      flash[:alert] = "You have not created a new customer."
      render action: "new"
    end
  end

  def edit
  end

  def update
    if @customer.update_attributes(params[:customer])
      flash[:notice] = "You have updated the customer."
      redirect_to @customer
    else
      flash[:alert] = "You have not updated the customer."
      render action: "edit"
    end
  end

  def destroy
    @customer.destroy
    flash[:notice] = "The customer has been deleted."
    redirect_to root_path
  end

  private

  def find_customer
    @customer = Customer.find(params[:id])
  end
end
