class ApartmentsController < ApplicationController
   before_action :set_apartment, only: [:show, :edit, :update, :destroy]


  def index
    @apartments = policy_scope(Apartment)
  end

  def show
  end

  def new
    @apartment = current_user.apartments.new
    authorize @apartment
  end

  def create
    @apartment = current_user.apartments.new(apartment_params)
    authorize @apartment
    if @apartment.save
      redirect_to @apartment
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

end
