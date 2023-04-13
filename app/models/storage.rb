class Storage < ApplicationRecord
    has_many :commodities

    validates :name, presence: true 
    validates :location, presence: true
end
