class Condominium < ApplicationRecord
  belongs_to :neighbourhood
  has_many :apartments, dependent: :delete_all
end
