puts "Deleting existing seed data..."
Hotel.destroy_all
Client.destroy_all
Room.destroy_all
Reservation.destroy_all

puts "Creating Hotel..."

Hotel.create(name: "Hotel Transylvania", address: Faker::Address.full_address)

puts "Creating Clients..."
25.times do
Client.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.cell_phone_in_e164)
end

puts "Creating Rooms..."
100.times do
Room.create(beds: Faker::Number.between(from:1, to:3),kitchenette?:Faker::Boolean.boolean, client_id: Client.all.sample, hotel_id: Hotel.all.sample, reservations_id: Reservation.all.sample)
end

puts "Creating Reservations..."
20.times do
    Reservation.create(date:Faker::Date.forward(days:365), length_of_stay: Faker::Number.digit, client_id: Client.all.sample,hotel_id: Hotel.all.sample)
end

puts "Seeding Complete..."

