class Product < ApplicationRecord
  has_many :comments
  has_many :product_orders
  has_many :rates
  belongs_to :category
end
