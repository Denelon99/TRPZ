class CreateCommodities < ActiveRecord::Migration[7.0]
  def change
    create_table :commodities do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.belongs_to :storage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
