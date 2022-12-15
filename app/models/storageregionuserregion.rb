class   storageregionuserregion < ApplicationRecord
    belongs_to :storages
    belongs_to :users
end