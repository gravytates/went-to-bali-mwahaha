require 'rails_helper'

describe OrderItem do
  it { should validate_presence_of :quantity }
  it { should validate_presence_of :order_id }
end
