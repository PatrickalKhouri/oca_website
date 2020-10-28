class Item < ApplicationRecord
  belongs_to :apartment
  belongs_to :room
  belongs_to :furniture
end
