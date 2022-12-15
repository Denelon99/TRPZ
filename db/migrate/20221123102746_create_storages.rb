class CreateStorages < ActiveRecord::Migration[7.0]
  def change
    create_table :storages do |t|
      t.string :orientation
      t.string :name
      t.string :section
      t.string :region_name

      t.timestamps
    end
  end
end
