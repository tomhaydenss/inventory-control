class Location < ActiveRecord::Base
  has_one :product
  belongs_to :warehouse
end
