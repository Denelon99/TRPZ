class AddUsersToStorage < ActiveRecord::Migration[7.0]
  def change
    add_reference :storages, :users, null: false, foreign_key: true
  end
end
