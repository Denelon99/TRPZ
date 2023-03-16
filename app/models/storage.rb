class Storage < ApplicationRecord
    has_many :users
    has_many :commodities
end
