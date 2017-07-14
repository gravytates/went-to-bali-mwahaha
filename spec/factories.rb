
FactoryGirl.define do
  factory :user do
    name 'Fred'
    email 'good@email.com'
    password 'Az3456'
    password_confirmation 'Az3456'
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
    image 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL_jAKF3OXirTrTlIBZYJz3CDiIU4J-Qm-4xlac4bITGVxlA50wehxZpL2'
  end
end
