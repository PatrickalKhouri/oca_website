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
    @bairros =  ["Ipanema", "Leblon", "Copacabana", "Botafogo"]
    condominium = Condominium.all
    @condominium_address = condominium.map { |cond| cond.address}
  end

  def create
  end
end