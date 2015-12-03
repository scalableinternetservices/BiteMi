# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#### Helper to seed listings#####

require 'ffaker'

def listing_seeder (user_id, brand, model, cover_photo_path, tags, description)
  Listing.create!( {brand: brand, model: model, price: rand(5..50).to_s, condition: "good",
  start_time: Date.today, end_time: Date.today + rand(10..50),
  description: description, user_id: user_id,
  tag_list: tags, status: "active", comment_root: listing_comment_root_init,
  cover_photo: nil})
end

def user_seeder (user_num)
  new_user = User.create! :email => "user#{user_num}@gmail.com",
      :password => '11111111', :password_confirmation => '11111111',
      :address => '516 Glenrock Avenue, Los Angeles'
  new_user.avatar = File.open(Rails.root + 'public/images/users/user1.jpeg')
  new_user.save!
end


#### Helper to seed listing photos #####
#### please put all the product listing photos under images/seed ####
def listing_photo_seeder (listing, image_path, description)
  listingphoto = ProductPhoto.create! :listing => listing
  listingphoto.picture = File.open(Rails.root + image_path)
  listingphoto.description = description
  listingphoto.save!
end
######## need to use this as initializer for comment_root
def listing_comment_root_init
  comment = Comment.new(title: 'root', author: 'nobody', body: 'empty')
  comment.save
  return comment.id
end

########
User.delete_all
Listing.delete_all
Order.delete_all
Comment.delete_all
Tag.delete_all
ProductPhoto.delete_all

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

listing11 = Listing.create!( {brand: "UArm", model: "V1", price: "1000.0", condition: "good",
  start_time: Date.today, end_time: Date.today + 50, description: "my precious!", user_id: user1.id,
  tag_list: "uarm, arduino, robot", status: "active", comment_root: listing_comment_root_init})
  listing11.cover_photo = File.open(Rails.root + 'public/images/seed/uarm_cover.jpg')
  listing_photo_seeder listing11, 'public/images/seed/uarm1.jpg', 'such arm'
  listing_photo_seeder listing11, 'public/images/seed/uarm2.jpg', 'so cooooool!'
  listing_photo_seeder listing11, 'public/images/seed/uarm3.jpg', 'wow'
  listing11.save!

listing12 = Listing.create!( {brand: "UArm", model: "V12", price: "1000.0", condition: "good",
  start_time: Date.today, end_time: Date.today + 60, description: "my precious!", user_id: user1.id,
  tag_list: "uarm, arduino, robot, old", status: "active", comment_root: listing_comment_root_init})
  listing12.cover_photo = File.open(Rails.root + 'public/images/seed/uarm_cover.jpg')
  listing_photo_seeder listing12, 'public/images/seed/uarm1.jpg', 'such arm'
  listing_photo_seeder listing12, 'public/images/seed/uarm2.jpg', 'why so coool'
  listing_photo_seeder listing12, 'public/images/seed/uarm3.jpg', 'everyone should get one'
  listing12.save!

listing13 = Listing.create!({brand: "UArm", model: "V21", price: "2000.0", condition: "good",
  start_time: Date.today, end_time: Date.today + 56, description: "uArm is an Arduino-powered desktop 4-axis parallel-mechanism robot arm, modeled after the ABB industrial PalletPack robot.",
  user_id: user1.id, tag_list: "uarm, arduino, robot, new, startup", status: "active", comment_root: listing_comment_root_init})
  listing13.cover_photo = File.open(Rails.root + 'public/images/seed/uarm_cover.jpg')
  listing13.save!

listing14 = Listing.create!({brand: "UArm", model: "V24", price: "2000.0", condition: "good",
  start_time: Date.today, end_time: Date.today + 70, description: "my precious!",
  user_id: user1.id, tag_list: "uarm, arduino, robot", status: "active", comment_root: listing_comment_root_init})
  listing14.cover_photo = File.open(Rails.root + 'public/images/seed/uarm_cover.jpg')
  listing14.save!

listing15 = Listing.create!({brand: "UArm", model: "V28", price: "2000.0", condition: "good",
  start_time: Date.today, end_time: Date.today + 80, description: "uArm is an Arduino-powered desktop 4-axis parallel-mechanism robot arm, modeled after the ABB industrial PalletPack robot.",
  user_id: user1.id, tag_list: "uarm, arduino, robot, reliable", status: "active", comment_root: listing_comment_root_init})
  listing15.cover_photo = File.open(Rails.root + 'public/images/seed/uarm_cover.jpg')
  listing15.save!

listing16 = Listing.create!({brand: "UArm", model: "V3", price: "1000.0", condition: "good",
  start_time: Date.today, end_time: Date.today + 40, description: "my precious!",
  user_id: user1.id, tag_list: "uarm, arduino, robot, new, startup", status: "active", comment_root: listing_comment_root_init})
  listing16.cover_photo = File.open(Rails.root + 'public/images/seed/uarm_cover.jpg')
  listing16.save!

listing21 = Listing.create!({brand: "UARm", model: "V2", price: "20.0", condition: "fairly new",
  start_time: Date.today, end_time: Date.today + 68, description: "don't take it away!",
  user_id: user2.id, tag_list: "uarm, arduino, robot, new", status: "active", comment_root: listing_comment_root_init})
  listing21.cover_photo = File.open(Rails.root + 'public/images/seed/uarm_cover.jpg')
  listing21.save!

listing22 = Listing.create!({brand: "Uarm", model: "V200", price: "2.0", condition: "fairly new",
  start_time: Date.today, end_time: Date.today + 83, description: "uArm is an Arduino-powered desktop 4-axis parallel-mechanism robot arm, modeled after the ABB industrial PalletPack robot.",
  user_id: user2.id, tag_list: "uarm, arduino, robot, new", status: "active", comment_root: listing_comment_root_init})
  listing22.cover_photo = File.open(Rails.root + 'public/images/seed/uarm_cover.jpg')
  listing22.save!

listing23 = Listing.create!({brand: "Dodge", model: "Challenger", price: "2.1", condition: "New",
  start_time: Date.today, end_time: Date.today + 54, description: "Much Faster than Passat!",
  user_id: user2.id, tag_list: "car, fast, dodge, american, reliable, science", status: "active", comment_root: listing_comment_root_init})
  listing23.cover_photo = File.open(Rails.root + 'public/images/seed/uarm_cover.jpg')
  listing23.save!

listing24 = Listing.create!({brand: "Jeep", model: "Renegade", price: "250.0", condition: "fairly new",
  start_time: Date.today, end_time: Date.today + 89, description: "The 2015 Jeep Renegade is ready for adventure with authentic Jeep capability & energetic styling.",
  user_id: user2.id, tag_list: "new, car, american, jeep, small, suv, pretty", status: "active", comment_root: listing_comment_root_init})
  listing24.cover_photo = File.open(Rails.root + 'public/images/seed/uarm_cover.jpg')
  listing24.save!

listing31 = Listing.create!({brand: "democracy!", model: "the newest one", price: "2.0", condition: "fairly new",
  start_time: Date.today, end_time: Date.today + 100, description: "yeah!",
  user_id: user3.id, tag_list: "old, lie, oops", status: "active", comment_root: listing_comment_root_init})
  listing31.cover_photo = File.open(Rails.root + 'public/images/seed/obama_cover.jpg')
  listing31.save!
listing32 = Listing.create!({brand: "freedom!", model: "the newest one", price: "2.0", condition: "fairly new",
  start_time: Date.today, end_time: Date.today + 98, description: "",
  user_id: user3.id, tag_list: "old, lie, oops", status: "active", comment_root: listing_comment_root_init})
  listing32.cover_photo = File.open(Rails.root + 'public/images/seed/obama_cover.jpg')
  listing32.save!

listing33 = Listing.create!({brand: "freedom!", model: "the older one", price: "2.0", condition: "fairly new",
  start_time: Date.today, end_time: Date.today + 50, description: "",
  user_id: user3.id, tag_list: "old, lie, oops", status: "active", comment_root: listing_comment_root_init})
  listing33.cover_photo = File.open(Rails.root + 'public/images/seed/obama_cover.jpg')
  listing33.save!
listing34 = Listing.create!({brand: "freedom!", model: "the coolest one", price: "2.0", condition: "fairly new",
  start_time: Date.today, end_time: Date.today + 50, description: "",
  user_id: user3.id, tag_list: "old, lie, oops", status: "active", comment_root: listing_comment_root_init})
  listing34.cover_photo = File.open(Rails.root + 'public/images/seed/obama_cover.jpg')
  listing34.save!

listing41 = Listing.create!({brand: "Apeture Lab", model: "portal gun", price: "0.0", condition: "fairly new",
  start_time: Date.today, end_time: Date.today + 50, description: "For science!",
  user_id: user4.id, tag_list: "new, gun, game, science, dangerous", status: "active", comment_root: listing_comment_root_init})
  listing41.cover_photo = File.open(Rails.root + 'public/images/seed/portalgun_cover.jpg')
  listing_photo_seeder listing41, 'public/images/seed/portal_gun.jpg', 'portal here, portal there'
  listing41.save!
listing42 = Listing.create!({brand: "Apeture Lab", model: "portal gun", price: "50.0", condition: "broken",
  start_time: Date.today, end_time: Date.today + 54, description: "For science!",
  user_id: user4.id, tag_list: "gun, game, science, dangerous", status: "active", comment_root: listing_comment_root_init})
  listing42.cover_photo = File.open(Rails.root + 'public/images/seed/portalgun_cover.jpg')
  listing_photo_seeder listing42, 'public/images/seed/portal_gun.jpg', 'the cake is a lie'
  listing42.save!
listing43 = Listing.create!({brand: "Apeture Lab", model: "portal gun", price: "20.0", condition: "broken",
  start_time: Date.today, end_time: Date.today + 52, description: "For science!",
  user_id: user4.id, tag_list: "broken, game, science, dangerous", status: "active", comment_root: listing_comment_root_init})
  listing43.cover_photo = File.open(Rails.root + 'public/images/seed/portalgun_cover.jpg')
  listing43.save!

listing51 = Listing.create!({brand: "Meeseeks box", model: "V0", price: "1000000.0", condition: "broken",
  start_time: Date.today, end_time: Date.today + 50, description: "woooooooo!",
  user_id: user5.id, tag_list: "science, dangerous, rick, reliable", status: "active", comment_root: listing_comment_root_init})
  listing51.cover_photo = File.open(Rails.root + 'public/images/seed/meeseeks_cover.jpg')
  listing_photo_seeder listing51, 'public/images/seed/meeseeks_box1.jpg', 'just press the button'
  listing_photo_seeder listing51, 'public/images/seed/meeseeks_box2.png', 'I\'m Mr.Meeseeks! Look at me!'
  listing51.save!
listing52 = Listing.create!({brand: "Jerry", model: "V0", price: "1000000.0", condition: "broken",
  start_time: Date.today, end_time: Date.today + 76, description: "woooooooo!",
  user_id: user5.id, tag_list: "stupid, robot, pretty, american", status: "active", comment_root: listing_comment_root_init})
  listing52.cover_photo = File.open(Rails.root + 'public/images/seed/meeseeks_cover.jpg')
  listing_photo_seeder listing52, 'public/images/seed/jerry.jpg', 'Ummmm... where am I?'
listing52.save!

Order.create!([
  {user_id: user4.id, listing_id: listing12.id, status: "Processing", start_time: Date.today+7, end_time: Date.today + 10, price: listing12.price},
  {user_id: user3.id, listing_id: listing11.id, status: "Processing", start_time: Date.today+4, end_time: Date.today + 11, price: listing11.price},
  {user_id: user2.id, listing_id: listing13.id, status: "Processing", start_time: Date.today+8, end_time: Date.today + 23, price: listing13.price},
  {user_id: user5.id, listing_id: listing14.id, status: "Processing", start_time: Date.today+3, end_time: Date.today + 5, price: listing14.price},

  {user_id: user4.id, listing_id: listing22.id, status: "Processing", start_time: Date.today, end_time: Date.today + 5, price: listing22.price},
  {user_id: user3.id, listing_id: listing23.id, status: "Processing", start_time: Date.today+12, end_time: Date.today + 16, price: listing23.price},
  {user_id: user5.id, listing_id: listing24.id, status: "Processing", start_time: Date.today+5, end_time: Date.today + 10, price: listing24.price},
  {user_id: user1.id, listing_id: listing21.id, status: "Processing", start_time: Date.today+15, end_time: Date.today + 23, price: listing21.price},

  {user_id: user2.id, listing_id: listing32.id, status: "Processing", start_time: Date.today+6, end_time: Date.today + 9, price: listing32.price},
  {user_id: user5.id, listing_id: listing34.id, status: "Processing", start_time: Date.today+3, end_time: Date.today + 7, price: listing34.price},
  {user_id: user4.id, listing_id: listing31.id, status: "Processing", start_time: Date.today+5, end_time: Date.today + 10, price: listing31.price},
  {user_id: user5.id, listing_id: listing33.id, status: "Processing", start_time: Date.today+27, end_time: Date.today + 32, price: listing33.price},
  {user_id: user4.id, listing_id: listing32.id, status: "Processing", start_time: Date.today+12, end_time: Date.today + 17, price: listing32.price},
  {user_id: user1.id, listing_id: listing33.id, status: "Processing", start_time: Date.today+16, end_time: Date.today + 20, price: listing33.price},
  {user_id: user3.id, listing_id: listing31.id, status: "Processing", start_time: Date.today+16, end_time: Date.today + 23, price: listing31.price},

  {user_id: user2.id, listing_id: listing41.id, status: "Processing", start_time: Date.today+6, end_time: Date.today + 13, price: listing41.price},
  {user_id: user3.id, listing_id: listing42.id, status: "Processing", start_time: Date.today+24, end_time: Date.today + 27, price: listing42.price},
  {user_id: user1.id, listing_id: listing43.id, status: "Processing", start_time: Date.today+36, end_time: Date.today + 44, price: listing43.price},
  ])

######## random seeds! ##########
10.times do
  listing_seeder user1.id, FFaker::HipsterIpsum.words(2).join(" "), FFaker::HipsterIpsum.word, 'occulus.jpg', FFaker::HipsterIpsum.words(4).join(", "), FFaker::HipsterIpsum.paragraph(10)
end

100.times do |i|
  user_seeder i
end
