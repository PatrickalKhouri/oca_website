class Apartment < ApplicationRecord
  belongs_to :condominium
  has_many_attached :photos
end
