class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates :name, :email, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, :password_confirmation, presence: true, length: { minimum: 6}
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_format_of :password, :with => /\A(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}\z/

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
