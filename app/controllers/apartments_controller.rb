class ApartmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

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
      @apartments = policy_scope(Apartment)
    end
  end

  def show
    @apartment = Apartment.find(params[:id])
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

  private

  def apartment_params
    params.require(:apartment).permit(:name, :oca_id, :m2, :number, :price, :bathroom, :neighbourhood, :condominium_id, :room, :guest, :bed, :description, :the_space, :transportation, :has, :hasnt, :pet_friendly, :active, photos: [])
  end
end