class User < ApplicationRecord
  has_many :rates
  has_many :orders
  has_many :comments
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :phone, numericality: true, 
            format: { with: /\A[0-9]{10,11}\z/ }
  validates :address, presence: true, length: { maximum: 50 }
  has_secure_password
end
