class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :carted_products, through: :products
end