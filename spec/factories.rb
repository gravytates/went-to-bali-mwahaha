
FactoryGirl.define do
  factory :user do
    name 'Fred'
    email 'good@lord'
    password '123456'
    password_confirmation '123456'
    admin true
  end

  factory :order do
    total_price '100.00'
    status 1
    user_id 1
  end

  factory :order_item do
    association :order, :factory => :order, strategy: :build
    association :product, :factory => :product, strategy: :build
    quantity 1
    order_id 1
  end

  factory :product do
    name 'Coffee'
    description 'Magical Elixir'
    price '10.00'
    image 'image.jpg'
  end
end