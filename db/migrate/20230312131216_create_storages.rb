# frozen_string_literal: true

class CreateStorages < ActiveRecord::Migration[7.0]
  def change
    create_table :storages do |t|
      t.string :mame
      t.string :location

      t.timestamps
    end
  end
end
