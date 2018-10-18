class User < ApplicationRecord
  has_many :rates
  has_many :orders
  has_many :comments
end
