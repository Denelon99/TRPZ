# frozen_string_literal: true

class AddCommoditiesToStorage < ActiveRecord::Migration[7.0]
  def change
    add_reference :storages, :commodities, null: false, foreign_key: true
  end
end
