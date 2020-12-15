class ApartmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @apartments = Apartment.all
    @apartments = policy_scope(Apartment)
  end

  def show
    @apartment = Apartment.find(params[:id])
    authorize @apartment
  end
end