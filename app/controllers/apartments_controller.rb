class ApartmentsController < ApplicationController

  def index
    @apartments = Apartment.where(active: true)
  end
end
