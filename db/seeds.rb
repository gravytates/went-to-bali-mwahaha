class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), image: Faker::LoremPixel.image("200x240", true), description: Faker::Lorem.sentence(5, false, 0).chop)
    end
  end
end

User.create!(name: "Grady", admin: true, email: "admin@admin.com", password: "Az1234", password_confirmation: "Az1234" )
User.create!(name: "Fred", email: "freddy@email.com", password: "Az1234", password_confirmation: "Az1234" )


Seed.begin
