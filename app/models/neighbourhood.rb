class Neighbourhood < ApplicationRecord
  belongs_to :city
  has_many :condominia, dependent: :delete_all
end