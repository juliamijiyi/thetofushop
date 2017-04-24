class Customer < ApplicationRecord
  has_secure_password
  validates :customer_email, presence: true, uniqueness: true
  has_one :cart
  has_many :products, through: :cart
end
