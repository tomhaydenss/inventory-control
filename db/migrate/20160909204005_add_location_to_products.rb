class AddLocationToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :location, index: true, foreign_key: true
  end
end
