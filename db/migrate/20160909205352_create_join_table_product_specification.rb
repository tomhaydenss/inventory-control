class CreateJoinTableProductSpecification < ActiveRecord::Migration
  def change
    create_join_table :products, :specifications do |t|
      # t.index [:product_id, :specification_id]
      # t.index [:specification_id, :product_id]
    end
  end
end
