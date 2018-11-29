class Category < ApplicationRecord
  has_many :products
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  default_scope -> { order(created_at: :desc)}
end
