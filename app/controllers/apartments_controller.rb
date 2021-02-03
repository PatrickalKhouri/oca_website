class ApartmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  after_action :verify_policy_scoped, :except => :index

  before_action :set_apartment, only: [:edit, :update, :show, :destroy]

  def index
    # @apartments = Apartment.all
    if params[:neighbourhood]
      @apartments_no_filter = policy_scope(Apartment)
      if @apartments_no_filter.where(neighbourhood: params[:neighbourhood]).count >= 1
        @apartments = @apartments_no_filter.where(neighbourhood: params[:neighbourhood])
      else
        @apartments = policy_scope(Apartment)
      end
    else
      if params[:query].present?
        @apartments = Apartment.where(name: params[:query])
      else
        @apartments = policy_scope(Apartment)
      end
    end
  end

  def show
    @booking = Booking.new
    @markers = {
      lat: @apartment.condominium.latitude,
      lng: @apartment.condominium.longitude
    }

    authorize @apartment
  end

  def new
    @apartment = Apartment.new
    authorize @apartment
    neighbourhoods = Neighbourhood.all
    @bairros = neighbourhoods.map { |neighbourhood| neighbourhood.name }
  end

  def create
    @apartment = Apartment.new(apartment_params)
    authorize @apartment
    if @apartment.save
      redirect_to apartment_path(@apartment.id)
    else
      render :new
    end
  end

  def edit
    authorize @apartment
  end

  def update
    authorize @apartment
    @apartment.update(apartment_params)
    if @apartment.save
      redirect_to apartment_path(@apartment.id)
    else
      render :edit
    end
  end

  def destroy
    authorize @apartment
    @apartment.destroy
    redirect_to apartments_path
  end

  private

  def set_apartment
    @apartment = Apartment.find(params[:id])
  end


  def apartment_params
    params.require(:apartment).permit(:name, :oca_id, :m2, :number, :price, :bathroom, :neighbourhood, :condominium_id, :room, :guest, :bed, :description, :the_space, :transportation, :has, :hasnt, :pet_friendly, :active, photos: [])
  end
end