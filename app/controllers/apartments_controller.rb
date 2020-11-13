class ApartmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @apartments = Apartment.where(active: true)
  end

  def new
    @apartment = Apartment.new
  end