class AddStorageToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :storage, null: false, foreign_key: true
  end
end
