class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.references :main_category, index: true

      t.timestamps null: false
    end
  end
end
