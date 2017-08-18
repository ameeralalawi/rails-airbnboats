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
User.create({
    :firstname => "Sexy",
    :lastname => "Carlos",
    :email => "test@test.com",
    :password => "password",
    :photo_url => "http://res.cloudinary.com/charlescazals/image/upload/v1502900804/luenmvsw4kamlpib7tai.jpg"
    })

User.create ([
  {:firstname => Faker::Name.first_name,
   :lastname => Faker::Name.last_name,
   :email => "2@test.com",
   :password => "password",
   :photo_url => "https://randomuser.me/api/portraits/lego/0.jpg"},
  {:firstname => Faker::Name.first_name,
   :lastname => Faker::Name.last_name,
   :email => "3@test.com",
   :password => "password",
   :photo_url => "https://randomuser.me/api/portraits/lego/1.jpg"},
  {:firstname => Faker::Name.first_name,
   :lastname => Faker::Name.last_name,
   :email => "4@test.com",
   :password => "password",
   :photo_url => "https://randomuser.me/api/portraits/lego/2.jpg"},
  {:firstname => Faker::Name.first_name,
   :lastname => Faker::Name.last_name,
   :email => "5@test.com",
   :password => "password",
   :photo_url => "https://randomuser.me/api/portraits/lego/3.jpg"},
  {:firstname => Faker::Name.first_name,
   :lastname => Faker::Name.last_name,
   :email => "6@test.com",
   :password => "password",
   :photo_url => "https://randomuser.me/api/portraits/lego/4.jpg"},
  {:firstname => Faker::Name.first_name,
   :lastname => Faker::Name.last_name,
   :email => "7@test.com",
   :password => "password",
   :photo_url => "https://randomuser.me/api/portraits/lego/5.jpg"},
  {:firstname => Faker::Name.first_name,
   :lastname => Faker::Name.last_name,
   :email => "8@test.com",
   :password => "password",
   :photo_url => "https://randomuser.me/api/portraits/lego/6.jpg"},
  {:firstname => Faker::Name.first_name,
   :lastname => Faker::Name.last_name,
   :email => "9@test.com",
   :password => "password",
   :photo_url => "https://randomuser.me/api/portraits/lego/7.jpg"},
  {:firstname => Faker::Name.first_name,
   :lastname => Faker::Name.last_name,
   :email => "10@test.com",
   :password => "password",
   :photo_url => "https://randomuser.me/api/portraits/lego/8.jpg"}
])

# Create Boat seed
Boat.create!([
  {name: "Eclipse",
   category: "Motor" ,
   subcategory: "Rigid",
   skipper: false,
   description: "Roman Abramovich's famous yacht, extremely luxurious and impecable service. Please do not open the boxes in the cargo hold.
The boat is equiped with four jockey seats for ultimate safety and passenger security whilst cruising at speed. It has total seating for 8 including rear and front seating. It's a bit more thirsty on fuel than some of our other boats but great return on your liquid investment.
The boat may be chartered with a skipper (prices separate), or as bare-boat provided the renter holds the required licenses. For this boat, the renter will be expected to have extensive performance boat experience." ,
   num_of_beds: 15,
   num_of_bath: 15,
   location: "Port de Saint tropez, France",
   capacity: 60,
   price: 10000,
   user_id: 3,
   photo_urls: ["https://www.croatiaweek.com/wp-content/uploads/2016/08/eclipse.jpg", "http://i.dailymail.co.uk/i/pix/2011/08/23/article-0-0D728B0300000578-448_634x395.jpg", "http://www.milliondollarblog.org/Photos/Eclipse%20Yacht.jpg"]},
  {name: "Adrenalina",
    category: "Motor" ,
    subcategory: "Semi-rigid",
    skipper: true,
    description: "A fast and furious boat, will cut right through the waves in whatever conditions. Also comfortable for more comfortable use, like a day out at sea. One inside-cabin with a bed
The boat is equiped with four jockey seats for ultimate safety and passenger security whilst cruising at speed. It has total seating for 8 including rear and front seating. It's a bit more thirsty on fuel than some of our other boats but great return on your liquid investment.
The boat may be chartered with a skipper (prices separate), or as bare-boat provided the renter holds the required licenses. For this boat, the renter will be expected to have extensive performance boat experience." ,
    num_of_beds: 1,
    num_of_bath: 0,
    location: "Via Litoranea, 52, 80059 Torre del Greco NA, Italy",
    capacity: 8,
    price: 300,
    user_id: 2,
    photo_urls: ["http://www.lomac.it/ambienteuserfiles/dbimg/galleryimg/1_0.jpg", "http://img.nauticexpo.com/images_ne/photo-g/20009-8997426.jpg","http://www.nauticareport.it/resizer/resize.php?url=public/adre.jpg&size=498x280c50"]},
  {name: "Titanic II",
    category: "Sailing" ,
    subcategory: "Keelboat",
    skipper: false,
    description: "A reliable beauty, perfect to impress girls!",
    num_of_beds: 0,
    num_of_bath: 0,
    location: "Via Alcide de Gasperi, 69, 80059 Torre del Greco NA, Italy",
    capacity: 2,
    price: 5,
    user_id: 3,
    photo_urls: ["http://www.peche-direct.com/images/photoarticle/grande/24YouYou_400.jpg"]},
  {name: "Hurricane",
    category: "Motor" ,
    subcategory: "Semi-rigid",
    skipper: false,
    description: "A sport's boat with impressive horse-power engine and lots of storage room for equipment
The boat is equiped with four jockey seats for ultimate safety and passenger security whilst cruising at speed. It has total seating for 8 including rear and front seating. It's a bit more thirsty on fuel than some of our other boats but great return on your liquid investment.
The boat may be chartered with a skipper (prices separate), or as bare-boat provided the renter holds the required licenses. For this boat, the renter will be expected to have extensive performance boat experience.",
    num_of_beds: 0,
    num_of_bath: 0,
    location: "Embankment Pier, Victoria Embankment, Londres, Royaume-Uni",
    capacity: 10,
    price: 250,
    user_id: 2,
    photo_urls: ["http://www.gardalake.com/wp-content/uploads/2012/05/nautica-bavaria-west-3.jpg"]},
  {name: "Victoria IV",
    category: "Sailing" ,
    subcategory: "Catamaran",
    skipper: true,
    description: "A 22m-long catamaran perfectly suited for family cruises, with 4 main cabins and one smaller cabin in the right hull. Kitchen and small living room inside the main cabin. Auto-piloting available.
The boat is equiped with four jockey seats for ultimate safety and passenger security whilst cruising at speed. It has total seating for 8 including rear and front seating. It's a bit more thirsty on fuel than some of our other boats but great return on your liquid investment.
The boat may be chartered with a skipper (prices separate), or as bare-boat provided the renter holds the required licenses. For this boat, the renter will be expected to have extensive performance boat experience.",
    num_of_beds: 5,
    num_of_bath: 3,
    location: "Kumbahçe Mahallesi, İskele Cd. No:14, 48400 Bodrum/Muğla, Turquie",
    capacity: 4,
    price: 200,
    user_id: 2,
    photo_urls: ["https://www.moorings.com/sites/default/files/styles/full_2_1_breakpoints_theme_moorings_xs_2x/public/catamaran_gallery/Gallery/4800/4800_Gallery_Ext2.jpg?t=1C20bb&itok=rEBmQyXh&timestamp=1477424768","http://www.tropicalyachts.com/bvi-yacht-charter/leopard_444_sst/leopard_444_sst_2361.jpg"]},
  {name: "Nina",
    category: "Motor" ,
    subcategory: "Rigid",
    skipper: false,
    description: "This type of boat is very popular with very good accommodation for the size of the vessel and good sea-keeping qualities. This particular boat is a rare find - she doesnt need an expensive deep-water mooring. Its a fun boat for the whole family. You will not regret booking this boat!
The boat is equiped with four jockey seats for ultimate safety and passenger security whilst cruising at speed. It has total seating for 8 including rear and front seating. It's a bit more thirsty on fuel than some of our other boats but great return on your liquid investment.
The boat may be chartered with a skipper (prices separate), or as bare-boat provided the renter holds the required licenses. For this boat, the renter will be expected to have extensive performance boat experience.",
    num_of_beds: 10,
    num_of_bath: 10,
    location: "Via Posillipo, 405/C, 80123 Napoli NA, Italy",
    capacity: 28,
    price: 3000,
    user_id: 2,
    photo_urls: ["https://www.burgessyachts.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/0/0/00009141_main.jpg","https://heesenyachts-ssl-indiciainteracti.netdna-ssl.com/app/uploads/2015/04/Heesen_Ruya_Cam01_FINAL1920-1024x624.jpg?x31937", "https://i.pinimg.com/736x/68/d3/24/68d324aa1a249c3c3af7b924e975a8c2--luxury-boats-luxury-yachts.jpg"]},
  {name: "Carlos' Yacht",
    category: "Motor" ,
    subcategory: "Rigid",
    skipper: false,
    description: 'Sexy Carlos will take you on a smooth ride for free, all inclusive. Ladies only! (no strings attached)',
    num_of_beds: 1,
    num_of_bath: 1,
    location: "Praça do Comércio, Lisbonne",
    capacity: 100,
    price: 0,
    user_id: 1,
    photo_urls: ["http://3.bp.blogspot.com/-JHmy8Y7pqfw/UVziMw2CjhI/AAAAAAAACI0/i2mr87dC-EQ/s1600/boat+for+rent+16.jpg"]},
  {name: "Queen Elizabeth 2",
    category: "Motor" ,
    subcategory: "Rigid",
    skipper: true,
    description: "In addition to being stocked with plenty of over-the-top amenities, this 295-footer has reduced noise, vibration and pollution thanks to an alternative propulsion technology called Azipod. The system is powered by eight electric generators that replace the two large main engines typically found on a yacht of this size.
The boat is equiped with four jockey seats for ultimate safety and passenger security whilst cruising at speed. It has total seating for 8 including rear and front seating. It's a bit more thirsty on fuel than some of our other boats but great return on your liquid investment.
The boat may be chartered with a skipper (prices separate), or as bare-boat provided the renter holds the required licenses. For this boat, the renter will be expected to have extensive performance boat experience.",
    num_of_beds: 15,
    num_of_bath: 15,
    location: "Port de New York",
    capacity: 50,
    price: 4000,
    user_id: 2,
    photo_urls: ["http://www.luxury4play.com/wordpress/wp-content/uploads/2015/08/SuperSport3.jpg","http://cdn.justluxe.com/articles/galleries/69811.jpg?comp=2", "https://s-media-cache-ak0.pinimg.com/originals/ab/f2/c0/abf2c06f48026e23962f635049e465ac.jpg"]},
  {name: "Yamato",
    category: "Sailing" ,
    subcategory: "Keelboat",
    skipper: true,
    description: "This type of boat is very popular with very good accommodation for the size of the vessel and good sea-keeping qualities. This particular boat is a rare find - she doesnt need an expensive deep-water mooring. Its a fun boat for the whole family. You will not regret booking this boat!
The boat is equiped with four jockey seats for ultimate safety and passenger security whilst cruising at speed. It has total seating for 8 including rear and front seating. It's a bit more thirsty on fuel than some of our other boats but great return on your liquid investment.
The boat may be chartered with a skipper (prices separate), or as bare-boat provided the renter holds the required licenses. For this boat, the renter will be expected to have extensive performance boat experience.",
    num_of_beds: 8,
    num_of_bath: 2,
    location: "Marina di, Via Caterola, 80076 Capri NA, Italie",
    capacity: 16,
    price: 2000,
    user_id: 3,
    photo_urls: ["http://newimages.yachtworld.com/resize/1/63/35/5786335_20160422111538415_1_XLARGE.jpg?f=/1/63/35/5786335_20160422111538415_1_XLARGE.jpg&w=1000&h=664&t=1461352538000","http://newimages.yachtworld.com/resize/1/28/2/6052802_20161221075143930_1_XLARGE.jpg?f=/1/28/2/6052802_20161221075143930_1_XLARGE.jpg&w=1666&h=1245&t=1482335512000"]},
  {name: "Santa Maria",
    category: "Motor" ,
    subcategory: "Semi-rigid",
    skipper: false,
    description: "A very long and comfortable motorboat, will not dissapoint.
The boat is equiped with four jockey seats for ultimate safety and passenger security whilst cruising at speed. It has total seating for 8 including rear and front seating. It's a bit more thirsty on fuel than some of our other boats but great return on your liquid investment.
The boat may be chartered with a skipper (prices separate), or as bare-boat provided the renter holds the required licenses. For this boat, the renter will be expected to have extensive performance boat experience.",
    num_of_beds: 0,
    num_of_bath: 0,
    location: "Av. Conselheiro Rodrigues Alves, S/N - Macuco, Santos - SP, 11015-900, Brésil",
    capacity: 4,
    price: 500,
    user_id: 2,
    photo_urls: ["http://www.calvi-sunone.com/imgdb/cont_bateau/photo/63","http://newimages.yachtworld.com/resize/1/85/80/4828580_20140929022234383_1_XLARGE.jpg?f=/1/85/80/4828580_20140929022234383_1_XLARGE.jpg&w=924&h=693&t=1411986154000"]}
  ])





# Create AvailabilitySlot seed (Currently only July 2018)
Boat.all.each do |boat|
  (Date.parse("01-07-2017")..Date.parse("31-12-2017")).each do |date|
    AvailabilitySlot.create ({
      date: date,
      boat_id: boat.id
    })
  end
end

# Create Booking seed
Booking.create!([
  {status: "approved", intro: "Hello! I am looking forward to renting your boat!" , start_date: DateTime.new(2017, 9, 1), end_date: DateTime.new(2017, 9, 5), rating: 5, boat_id: 1, user_id: 4},
  {status: "approved", intro: "I love boats! " , start_date: DateTime.new(2017, 9, 10), end_date: DateTime.new(2017, 9, 20), rating: 4, boat_id: 1, user_id: 5},
  {status: "approved", intro: "Are you going to be the skipper?" , start_date: DateTime.new(2017, 9, 23), end_date: DateTime.new(2017, 9, 25), rating: 3, boat_id: 1, user_id: 6},
  {status: "pending", intro: "Can I have a discount?" , start_date: DateTime.new(2017, 9, 1), end_date: DateTime.new(2017, 9, 3), rating: 2, boat_id: 2, user_id: 7},
  {status: "pending", intro: "Will you be my friend?" , start_date: DateTime.new(2017, 9, 24), end_date: DateTime.new(2017, 9, 29), rating: 2, boat_id: 2, user_id: 8},
  {status: "pending", intro: "I dont need a skipper!" , start_date: DateTime.new(2017, 9, 1), end_date: DateTime.new(2017, 9, 5), rating: 3, boat_id: 6, user_id: 9},
  {status: "rejected", intro: "People like to call me captain" , start_date: DateTime.new(2017, 9, 1), end_date: DateTime.new(2017, 9, 5), rating: 5, boat_id: 7, user_id: 10},
  {status: "rejected", intro: "Boat! Bears! Battlestar Galactica!" , start_date: DateTime.new(2017, 9, 1), end_date: DateTime.new(2017, 9, 5), rating: 5, boat_id: 8, user_id: 5}
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
    if booking.status == "approved"
      (start_d..end_d).each do |d|
        availslot = AvailabilitySlot.where(boat_id: booking.boat_id, date: d).take
        BookingSlot.create(availability_slot_id: availslot.id, booking_id: booking.id)
      end
    end
  end
end

puts 'Finished!'

