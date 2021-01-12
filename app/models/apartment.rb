class Apartment < ApplicationRecord
  belongs_to :condominium
  has_many_attached :photos
  has_many :bookings
  validates :name, :number, :price, :m2, :room, :guest, :bed, :bathroom, :description, :the_space, :transportation, :has, :hasnt, :oca_id, :neighbourhood,  presence: true
  validates :oca_id, :name, uniqueness: true
  validates :price, :room, :guest, :bed, :bathroom, :parking_spot, :numericality => { greater_than_or_equal_to: 0}
  validates :m2, :numericality => { greater_than: 0}
  validates :pet_friendly, inclusion: { in: [true, false]}
  validates :oca_id, length: {minimun: 3, maximum: 3}
  
  def unavailable_dates
    bookings.pluck(:check_in, :check_out).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
