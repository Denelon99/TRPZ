class Commodity < ApplicationRecord
  belongs_to :storage

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
end
