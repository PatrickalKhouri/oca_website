class ApartmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @apartments = Apartment.all
    @apartments = policy_scope(Apartment)
  end

  def show
    @apartment = Apartment.find(params[:id])
    @markers = {
      lat: @apartment.condominium.latitude,
      lng: @apartment.condominium.longitude
    }

    authorize @apartment
  end
end