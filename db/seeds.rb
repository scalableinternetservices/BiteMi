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



listing11 = Listing.create!( {brand: "UArm", model: "V1", price: "1000.0", condition: "good", start_time: "2015-10-19", end_time: "2015-10-26", description: "my precious!", status: nil, user_id: user1.id})
listing12 = Listing.create!( {brand: "UArm", model: "V12", price: "1000.0", condition: "good", start_time: "2015-10-19", end_time: "2015-10-28", description: "my precious!", status: nil, user_id: user1.id})
  
Listing.create!([
  {brand: "UArm", model: "V21", price: "2000.0", condition: "good", start_time: "2015-10-19", end_time: "2015-11-19", description: "my precious!", status: nil, user_id: user1.id},
  {brand: "UArm", model: "V24", price: "2000.0", condition: "good", start_time: "2015-10-19", end_time: "2015-11-9", description: "my precious!", status: nil, user_id: user1.id},
  {brand: "UArm", model: "V28", price: "2000.0", condition: "good", start_time: "2015-10-19", end_time: "2015-10-19", description: "my precious!", status: nil, user_id: user1.id},
  {brand: "UArm", model: "V3", price: "1000.0", condition: "good", start_time: "2015-10-19", end_time: "2015-10-19", description: "my precious!", status: nil, user_id: user1.id},

  {brand: "UARm", model: "V2", price: "20.0", condition: "fairly new", start_time: "2015-10-19", end_time: "2015-10-19", description: "don't take it away!", status: nil, user_id: user2.id},
  {brand: "Uarm", model: "V200", price: "2.0", condition: "fairly new", start_time: "2015-10-19", end_time: "2015-10-19", description: "don't take it away!", status: nil, user_id: user2.id},
  {brand: "Dodge", model: "Challenger", price: "0.1", condition: "New", start_time: "2015-10-19", end_time: "2016-2-20", description: "Much Faster than Passat!", status: nil, user_id: user2.id},
  {brand: "Jeep", model: "Renegade", price: "250.0", condition: "fairly new", start_time: "2015-10-19", end_time: "2015-12-25", description: "Much bigger than Smart!", status: nil, user_id: user2.id},

  {brand: "democracy!", model: "the newest one", price: "2.0", condition: "fairly new", start_time: "2015-10-19", end_time: "2015-10-19", description: "yeah!", status: nil, user_id: user3.id},
  {brand: "freedom!", model: "the newest one", price: "2.0", condition: "fairly new", start_time: "2015-10-19", end_time: "2015-10-19", description: "", status: nil, user_id: user3.id},
  {brand: "freedom!", model: "the older one", price: "2.0", condition: "fairly new", start_time: "2015-10-23", end_time: "2015-12-2", description: "", status: nil, user_id: user3.id},
  {brand: "freedom!", model: "the coolest one", price: "2.0", condition: "fairly new", start_time: "2015-11-1", end_time: "2015-12-25", description: "", status: nil, user_id: user3.id},

  {brand: "Apeture Lab", model: "portal gun", price: "0.0", condition: "fairly new", start_time: "2015-10-19", end_time: "2015-10-19", description: "For science!", status: nil, user_id: user4.id},
  {brand: "Apeture Lab", model: "portal gun", price: "50.0", condition: "broken", start_time: "2015-10-19", end_time: "2015-10-19", description: "For science!", status: nil, user_id: user4.id},
  {brand: "Apeture Lab", model: "portal gun", price: "20.0", condition: "broken", start_time: "2015-10-19", end_time: "2015-10-19", description: "For science!", status: nil, user_id: user4.id},

  {brand: "Meeseeks box", model: "V0", price: "1000000.0", condition: "broken", start_time: "2015-10-19", end_time: "2015-10-19", description: "woooooooo!", status: nil, user_id: user5.id},
  {brand: "Jerry", model: "V0", price: "-1000000.0", condition: "broken", start_time: "2015-10-19", end_time: "2015-10-19", description: "woooooooo!", status: nil, user_id: user5.id}
])

Order.create!([
  {user_id: user4, listing_id: listing12, status: "Processing", start_time: "2015-10-24", end_time: "2015-10-27", price: "2.0"}, 
  {user_id: user3, listing_id: listing11, status: "Processing", start_time: "2015-10-29", end_time: "2015-11-3", price: "2.0"}

  ])
