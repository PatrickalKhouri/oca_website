class Apartment < ApplicationRecord
  belongs_to :condominium
  has_many_attached :photos
  has_many :bookings

  def unavailable_dates
    bookings.pluck(:check_in, :check_out).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
