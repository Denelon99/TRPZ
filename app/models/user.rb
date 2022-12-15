class User < ApplicationRecord
    belongs_to :roles
    belongs_to :storages
end
