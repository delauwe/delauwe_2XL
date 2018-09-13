class ApartmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]

  add_breadcrumb "home", :root_path
  # add_breadcrumb "flatshares", :flatshares_path
  # add_breadcrumb "apparts", :apparts_path
  add_breadcrumb "apartments", :apartments_path
  # add_breadcrumb "flatshares", :flatshares_path







  def index
    @apartments = policy_scope(Apartment)
    @flatshares = Apartment.where(category: "flatshare").order(availability: :asc).all
    @apparts = Apartment.where(category: "apartment").order(availability: :asc).all

  end

  def show
    add_breadcrumb @apartment.name, apartment_path(@apartment)
  end

  def new
    @apartment = Apartment.new
    authorize @apartment
  end

  def create
    @apartment = Apartment.new(apartment_params)
    authorize @apartment
    if @apartment.save
      redirect_to apartment_path(@apartment)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @apartment.update(params[:apartment])
    redirect_to apartment_path(@apartment)

  end

  def destroy
    @apartment.destroy
    redirect_to apartments_path
  end

  private

  def set_apartment
    @apartment = Apartment.find(params[:id])
    authorize @apartment
  end

  def apartment_params
    params.require(:apartment).permit(:name, :location, :size, :number_of_rooms, :price, :price_per_room, :category, :photo, :bathroom, :toilets, :terrace, :living_room, :dining_room, :kitchen, :washing_machine, :washing_room, :shower_room)
  end

end
