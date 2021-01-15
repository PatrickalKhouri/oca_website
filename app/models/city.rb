class City < ApplicationRecord
  has_many :neighbourhoods, dependent: :delete_all
  validates :name, presence: true
end
