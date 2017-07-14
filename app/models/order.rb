class Order < ApplicationRecord
  has_many :order_items
  belongs_to :user, optional: true
  validates :total_price, presence: true

  before_save :calculate_total

  def calculate_total
    self.total_price = order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  def finalize(user)
    self.user_id = user.id
    self.status = 2
    self.save
  end

  rails_admin do
    configure :user do
      label 'Owner of this ball: '
    end
  end
end
