# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Boat.destroy_all
User.destroy_all

puts 'Seeding database...'

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



puts 'Finished!'
# {name: "Gin and Tonic", photo: open("http://res.cloudinary.com/cloudinary-railsapp/image/upload/v1502452212/gintonic_jrejil.png")}


