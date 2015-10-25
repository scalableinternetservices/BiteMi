# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Listing.delete_all
Order.delete_all

user1 = User.create! :email => 'doge@gmail.com', :password => '11111111', :password_confirmation => '11111111', :address => '516 Glenrock Avenue'
user1.avatar = File.open(Rails.root + 'public/images/users/user1.jpeg')
user1.save!

user2 = User.create! :email => 'pandoge@gmail.com', :password => '11111111', :password_confirmation => '11111111', :address => '516 Glenrock Avenue'
user2.avatar = File.open(Rails.root + 'public/images/users/user2.jpg')
user2.save!

user3 = User.create! :email => 'obama@gmail.com', :password => '11111111', :password_confirmation => '11111111', :address => '1600 Pennsylvania Ave NW, Washington'
user3.avatar = File.open(Rails.root + 'public/images/users/user3.jpg')
user3.save!

user4 = User.create! :email => 'aperture@gmail.com', :password => '11111111', :password_confirmation => '11111111', :address => '6739 Cedar Avenue Brooklyn, NY 11201'
user4.avatar = File.open(Rails.root + 'public/images/users/user4.jpeg')
user4.save!

user5 = User.create! :email => 'rick@morty.com', :password => '11111111', :password_confirmation => '11111111', :address => '2693 Homestead Drive Chapel Hill, NC 27516'
user5.avatar = File.open(Rails.root + 'public/images/users/user5.jpg')
user5.save!


listing11 = Listing.create!( {brand: "UArm", model: "V1", price: "1000.0", condition: "good", start_time: "2015-10-19", end_time: "2015-11-26", description: "my precious!", status: nil, user_id: user1.id})
listing12 = Listing.create!( {brand: "UArm", model: "V12", price: "1000.0", condition: "good", start_time: "2015-10-19", end_time: "2015-11-28", description: "my precious!", status: nil, user_id: user1.id})
 listing13 = Listing.create!({brand: "UArm", model: "V21", price: "2000.0", condition: "good", start_time: "2015-10-19", end_time: "2015-11-19", description: "my precious!", status: nil, user_id: user1.id})
 listing14 = Listing.create!({brand: "UArm", model: "V24", price: "2000.0", condition: "good", start_time: "2015-10-19", end_time: "2015-11-9", description: "my precious!", status: nil, user_id: user1.id})
 listing15 = Listing.create!({brand: "UArm", model: "V28", price: "2000.0", condition: "good", start_time: "2015-10-19", end_time: "2016-2-20", description: "my precious!", status: nil, user_id: user1.id})
 listing16 = Listing.create!({brand: "UArm", model: "V3", price: "1000.0", condition: "good", start_time: "2015-10-19", end_time: "2016-2-20", description: "my precious!", status: nil, user_id: user1.id})

 listing21 = Listing.create!({brand: "UARm", model: "V2", price: "20.0", condition: "fairly new", start_time: "2015-10-19", end_time: "2016-2-20", description: "don't take it away!", status: nil, user_id: user2.id})
 listing22 = Listing.create!({brand: "Uarm", model: "V200", price: "2.0", condition: "fairly new", start_time: "2015-10-19", end_time: "2016-2-20", description: "don't take it away!", status: nil, user_id: user2.id})
 listing23 = Listing.create!({brand: "Dodge", model: "Challenger", price: "0.1", condition: "New", start_time: "2015-10-19", end_time: "2016-2-20", description: "Much Faster than Passat!", status: nil, user_id: user2.id})
 listing24 = Listing.create!({brand: "Jeep", model: "Renegade", price: "250.0", condition: "fairly new", start_time: "2015-10-19", end_time: "2015-12-25", description: "Much bigger than Smart!", status: nil, user_id: user2.id})

 listing31 = Listing.create!({brand: "democracy!", model: "the newest one", price: "2.0", condition: "fairly new", start_time: "2015-10-19", end_time: "2016-2-20", description: "yeah!", status: nil, user_id: user3.id})
 listing32 = Listing.create!({brand: "freedom!", model: "the newest one", price: "2.0", condition: "fairly new", start_time: "2015-10-19", end_time: "2016-2-20", description: "", status: nil, user_id: user3.id})
 listing33 = Listing.create!({brand: "freedom!", model: "the older one", price: "2.0", condition: "fairly new", start_time: "2015-10-23", end_time: "2016-2-20", description: "", status: nil, user_id: user3.id})
 listing34 = Listing.create!({brand: "freedom!", model: "the coolest one", price: "2.0", condition: "fairly new", start_time: "2015-11-1", end_time: "2016-2-20", description: "", status: nil, user_id: user3.id})

 listing41 = Listing.create!({brand: "Apeture Lab", model: "portal gun", price: "0.0", condition: "fairly new", start_time: "2015-10-19", end_time: "2016-2-20", description: "For science!", status: nil, user_id: user4.id})
 listing42 = Listing.create!({brand: "Apeture Lab", model: "portal gun", price: "50.0", condition: "broken", start_time: "2015-10-19", end_time: "2016-2-20", description: "For science!", status: nil, user_id: user4.id})
 listing43 = Listing.create!({brand: "Apeture Lab", model: "portal gun", price: "20.0", condition: "broken", start_time: "2015-10-19", end_time: "2016-2-20", description: "For science!", status: nil, user_id: user4.id})

 listing51 = Listing.create!({brand: "Meeseeks box", model: "V0", price: "1000000.0", condition: "broken", start_time: "2015-10-19", end_time: "2016-2-20", description: "woooooooo!", status: nil, user_id: user5.id})
 listing52 = Listing.create!({brand: "Jerry", model: "V0", price: "-1000000.0", condition: "broken", start_time: "2015-10-19", end_time: "2016-2-20", description: "woooooooo!", status: nil, user_id: user5.id})

Order.create!([
  {user_id: user4.id, listing_id: listing12.id, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: listing12.price}, 
  {user_id: user3.id, listing_id: listing11.id, status: "Processing", start_time: "2015-10-29", end_time: "2015-11-3", price: listing11.price},
  {user_id: user2.id, listing_id: listing13.id, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: listing13.price},
  {user_id: user5.id, listing_id: listing14.id, status: "Processing", start_time: "2015-10-28", end_time: "2015-11-24", price: listing14.price},

  {user_id: user4.id, listing_id: listing22.id, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: listing22.price},
  {user_id: user3.id, listing_id: listing23.id, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: listing23.price},
  {user_id: user5.id, listing_id: listing24.id, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: listing24.price},
  {user_id: user1.id, listing_id: listing21.id, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: listing21.price},

  {user_id: user2.id, listing_id: listing32.id, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: listing32.price},
  {user_id: user5.id, listing_id: listing34.id, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: listing34.price},
  {user_id: user4.id, listing_id: listing31.id, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: listing31.price},
  {user_id: user5.id, listing_id: listing33.id, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: listing33.price},
  {user_id: user4.id, listing_id: listing32.id, status: "Processing", start_time: "2015-10-30", end_time: "2015-11-10", price: listing32.price},
  {user_id: user1.id, listing_id: listing33.id, status: "Processing", start_time: "2015-10-30", end_time: "2015-11-14", price: listing33.price},
  {user_id: user3.id, listing_id: listing31.id, status: "Processing", start_time: "2015-11-5", end_time: "2015-12-5", price: listing31.price},

  {user_id: user2.id, listing_id: listing41.id, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: listing41.price},
  {user_id: user3.id, listing_id: listing42.id, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: listing42.price},
  {user_id: user1.id, listing_id: listing43.id, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: listing43.price},
  ])
