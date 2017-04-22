class Category < ActiveRecord::Base
  has_many :sub_categories, class_name: "Category",
  							foreign_key: "main_category_id"
  belongs_to :main_category, class_name: "Category",
  							foreign_key: "main_category_id"
  
end
