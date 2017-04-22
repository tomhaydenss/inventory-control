class CreateQuotations < ActiveRecord::Migration
  def change
    create_table :quotations do |t|
      t.integer :price
      t.references :product, index: true, foreign_key: true
      t.references :supplier, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
