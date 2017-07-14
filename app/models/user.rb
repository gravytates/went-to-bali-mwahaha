class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates :name, :email, :password, :password_confirmation, presence: true

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
