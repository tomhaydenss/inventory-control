class AddTypeToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :type, :string
  end
end
