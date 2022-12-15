class CreateJoinTableStorageregionsUserregions < ActiveRecord::Migration[7.0]
  def change
    create_join_table :storageregions, :userregions do |t|
      # t.index [:storageregion_id, :userregion_id]
      # t.index [:userregion_id, :storageregion_id]
    end
  end
end
