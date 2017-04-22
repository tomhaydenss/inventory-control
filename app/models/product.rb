class Product < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :location  
  has_and_belongs_to_many :specifications
  has_many :quotations
  has_many :suppliers, through: :quotations
  has_one :warehouse, through: :location
  belongs_to :category  
end
