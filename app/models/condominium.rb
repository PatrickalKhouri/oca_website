class Condominium < ApplicationRecord
  belongs_to :neighbourhood
  has_many :apartments, dependent: :delete_all
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
