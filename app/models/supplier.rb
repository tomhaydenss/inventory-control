class Supplier < ActiveRecord::Base
  has_many :quotations
  has_many :products, through: :quotations
  has_one :address, as: :addressable
end
