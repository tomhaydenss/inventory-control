class CreateSpecifications < ActiveRecord::Migration
  def change
    create_table :specifications do |t|
      t.string :name
      t.string :value

      t.timestamps null: false
    end
  end
end
