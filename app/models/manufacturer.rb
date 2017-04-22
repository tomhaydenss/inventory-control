class Manufacturer < ActiveRecord::Base
  has_many :products
  has_one :address, as: :addressable
end
