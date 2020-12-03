class ApartmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    # @apartments = Apartment.all
    @apartments = policy_scope(Apartment)
  end

  def new
    @apartment = Apartment.new
  end
end