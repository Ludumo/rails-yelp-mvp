puts "Cleaning up database"
Restaurant.destroy_all
puts "database is clean"

5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "restaurant #{restaurant.id} is created"
end

puts "done"
