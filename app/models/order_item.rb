class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates :quantity, :order_id, presence: true
end
