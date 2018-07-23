class ApartmentsController < ApplicationController
   before_action :set_apartment, only: [:show, :edit, :update, :destroy]


  def index
    @apartments = policy_scope(Apartment)
  end

  def show
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
