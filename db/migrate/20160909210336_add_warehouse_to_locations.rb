class AddWarehouseToLocations < ActiveRecord::Migration
  def change
    add_reference :locations, :warehouse, index: true, foreign_key: true
  end
end
