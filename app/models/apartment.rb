class Apartment < ApplicationRecord
  belongs_to :condominium
  has_many_attached :photos
  has_many :bookings
end
