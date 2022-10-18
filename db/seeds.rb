puts "Cleaning database..."
Restaurant.destroy_all
Review.destroy_all

puts "Creating restaurants..."

5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "Restaurant with id #{restaurant.id} has been created"

  review = Review.create(
    rating: rand(0..5),
    content: Faker::Restaurant.review,
    restaurant: restaurant
  )
  puts "Reviews with id #{review.id} has been created"
end

puts "Creating reviews..."

5.times do
  review = Review.create(
    rating: rand(0..5),
    content: Faker::Restaurant.review
  )
end
