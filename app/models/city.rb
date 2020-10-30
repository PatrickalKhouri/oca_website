class City < ApplicationRecord
  has_many :neighbourhoods, dependent: :delete_all
end
