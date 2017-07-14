require 'rails_helper'

describe OrderItem do
  it { should validate_presence_of :quantity }
  it { should validate_presence_of :order_id }
  it { should belong_to :order }
  it { should belong_to :product }
end
