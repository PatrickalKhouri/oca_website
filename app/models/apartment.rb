class Apartment < ApplicationRecord
  belongs_to :condominium
  has_one_attached :photo
end
