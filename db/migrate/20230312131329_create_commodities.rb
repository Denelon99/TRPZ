# frozen_string_literal: true

class CreateCommodities < ActiveRecord::Migration[7.0]
  def change
    create_table :commodities do |t|
      t.string :name
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
