class Product < ApplicationRecord
  before_save :create_category_from_name
  belongs_to :category
  has_many :comments
  has_many :product_orders
  has_many :rates

  def create_category_from_name
    create_category(name: new_category_name) unless  new_category_name.blank?
  end
end
