class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.references :addressable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
