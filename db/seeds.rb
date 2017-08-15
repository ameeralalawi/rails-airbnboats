# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
User.destroy_all
Boat.destroy_all
Booking.destroy_all
AvailabilitySlot.destroy_all
BookingSlot.destroy_all



puts 'Seeding database...'
# Create User seed
10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  User.create ({
    :firstname => first_name,
    :lastname => last_name,
    :email => "#{first_name}.#{last_name}@test.com",
    :password => "password"
    })

end

# Create Boat seed
Boat.create!([
  {name: "Titanic", category: "Sailing" , subcategory: "Keelboat", skipper: false, description: 'This type of boat is very popular with very good accommodation for the size of the vessel and good sea-keeping qualities. This particular boat is a rare find - she doesnt need an expensive deep-water mooring. Its a fun boat for the whole family. You will not regret booking this boat!', num_of_beds: 2, num_of_bath: 1, location: "Lisbon", capacity: 6, price: 300, user_id: 1},
  {name: "HMS Beagle", category: "Sailing" , subcategory: "Dinghy", skipper: false, description: 'This type of boat is very popular with very good accommodation for the size of the vessel and good sea-keeping qualities. This particular boat is a rare find - she doesnt need an expensive deep-water mooring. Its a fun boat for the whole family. You will not regret booking this boat!', num_of_beds: 0, num_of_bath: 0, location: "Porto", capacity: 4, price: 200, user_id: 2},
  {name: "HMS Bounty", category: "Sailing" , subcategory: "Keelboat", skipper: false, description: 'This type of boat is very popular with very good accommodation for the size of the vessel and good sea-keeping qualities. This particular boat is a rare find - she doesnt need an expensive deep-water mooring. Its a fun boat for the whole family. You will not regret booking this boat!', num_of_beds: 4, num_of_bath: 1, location: "Lisbon", capacity: 8, price: 400, user_id: 3},
  {name: "USS Maine", category: "Sailing" , subcategory: "Keelboat", skipper: false, description: 'This type of boat is very popular with very good accommodation for the size of the vessel and good sea-keeping qualities. This particular boat is a rare find - she doesnt need an expensive deep-water mooring. Its a fun boat for the whole family. You will not regret booking this boat!', num_of_beds: 5, num_of_bath: 2, location: "Algarve", capacity: 16, price: 800, user_id: 2},
  {name: "The Black Pearl", category: "Sailing" , subcategory: "Catamaran", skipper: true, description: 'This type of boat is very popular with very good accommodation for the size of the vessel and good sea-keeping qualities. This particular boat is a rare find - she doesnt need an expensive deep-water mooring. Its a fun boat for the whole family. You will not regret booking this boat!', num_of_beds: 2, num_of_bath: 1, location: "Porto", capacity: 4, price: 200, user_id: 1},
  {name: "Nina", category: "Motor" , subcategory: "Semi-rigid", skipper: false, description: 'This type of boat is very popular with very good accommodation for the size of the vessel and good sea-keeping qualities. This particular boat is a rare find - she doesnt need an expensive deep-water mooring. Its a fun boat for the whole family. You will not regret booking this boat!', num_of_beds: 0, num_of_bath: 0, location: "Lisbon", capacity: 3, price: 150, user_id: 2},
  {name: "Queen Elizabeth 1", category: "Motor" , subcategory: "Rigid", skipper: false, description: 'This type of boat is very popular with very good accommodation for the size of the vessel and good sea-keeping qualities. This particular boat is a rare find - she doesnt need an expensive deep-water mooring. Its a fun boat for the whole family. You will not regret booking this boat!', num_of_beds: 5, num_of_bath: 4, location: "Porto", capacity: 14, price: 700, user_id: 3},
  {name: "Queen Elizabeth 2", category: "Motor" , subcategory: "Rigid", skipper: true, description: 'This type of boat is very popular with very good accommodation for the size of the vessel and good sea-keeping qualities. This particular boat is a rare find - she doesnt need an expensive deep-water mooring. Its a fun boat for the whole family. You will not regret booking this boat!', num_of_beds: 9, num_of_bath: 5, location: "Porto", capacity: 26, price: 1300, user_id: 1},
  {name: "Yamato", category: "Motor" , subcategory: "Semi-rigid", skipper: false, description: 'This type of boat is very popular with very good accommodation for the size of the vessel and good sea-keeping qualities. This particular boat is a rare find - she doesnt need an expensive deep-water mooring. Its a fun boat for the whole family. You will not regret booking this boat!', num_of_beds: 0, num_of_bath: 0, location: "Algarve", capacity: 6, price: 300, user_id: 1},
  {name: "Santa Maria", category: "Motor" , subcategory: "Semi-rigid", skipper: false, description: 'This type of boat is very popular with very good accommodation for the size of the vessel and good sea-keeping qualities. This particular boat is a rare find - she doesnt need an expensive deep-water mooring. Its a fun boat for the whole family. You will not regret booking this boat!', num_of_beds: 0, num_of_bath: 0, location: "Lisbon", capacity: 4, price: 200, user_id: 1}
  ])

# Create AvailabilitySlot seed (Currently only July 2018)
Boat.all.each do |boat|
  (1..31).each do |d|
    AvailabilitySlot.create ({
      date: DateTime.new(2018, 7, d),
      boat_id: boat.id
    })
  end
end

# Create Booking seed
Booking.create!([
  {status: "approved", intro: "Hello!" , start_date: DateTime.new(2018, 7, 1), end_date: DateTime.new(2018, 7, 5), rating: 5, boat_id: 1, user_id: 4},
  {status: "approved", intro: "Hello!" , start_date: DateTime.new(2018, 7, 10), end_date: DateTime.new(2018, 7, 20), rating: 4, boat_id: 1, user_id: 5},
  {status: "approved", intro: "Hello!" , start_date: DateTime.new(2018, 7, 20), end_date: DateTime.new(2018, 7, 22), rating: 3, boat_id: 1, user_id: 6},
  {status: "pending", intro: "Hello!" , start_date: DateTime.new(2018, 7, 1), end_date: DateTime.new(2018, 7, 3), rating: 2, boat_id: 2, user_id: 7},
  {status: "pending", intro: "Hello!" , start_date: DateTime.new(2018, 7, 24), end_date: DateTime.new(2018, 7, 29), rating: 2, boat_id: 2, user_id: 8},
  {status: "pending", intro: "Hello!" , start_date: DateTime.new(2018, 7, 1), end_date: DateTime.new(2018, 7, 5), rating: 3, boat_id: 6, user_id: 9},
  {status: "rejected", intro: "Hello!" , start_date: DateTime.new(2018, 7, 1), end_date: DateTime.new(2018, 7, 5), rating: 5, boat_id: 7, user_id: 10},
  {status: "rejected", intro: "Hello!" , start_date: DateTime.new(2018, 7, 1), end_date: DateTime.new(2018, 7, 5), rating: 5, boat_id: 8, user_id: 5},
  {status: "approved", intro: "Hello!" , start_date: DateTime.new(2018, 7, 28), end_date: DateTime.new(2018, 7, 29), rating: 5, boat_id: 2, user_id: 5} #This should results in a conflict on the boat
 ])

# Create BookingSlot seed
Booking.all.each do |booking|
  start_d = booking.start_date
  end_d = booking.end_date
  count = 0
  (start_d..end_d).each do |d|
    if AvailabilitySlot.exists?(boat_id: booking.boat_id, date: d)
      count += 1
    end
  end
  if count == (start_d..end_d).count
    (start_d..end_d).each do |d|
      availslot = AvailabilitySlot.where(boat_id: booking.boat_id, date: d).take
      BookingSlot.create(availability_slot_id: availslot.id, booking_id: booking.id)
    end
  end
end

puts 'Finished!'
# {name: "Gin and Tonic", photo: open("http://res.cloudinary.com/cloudinary-railsapp/image/upload/v1502452212/gintonic_jrejil.png")}


