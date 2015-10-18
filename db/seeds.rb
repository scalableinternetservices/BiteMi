# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create! :email => 'blah@gmail.com', :password => '11111111', :password_confirmation => '11111111'
user = User.create! :email => 'oops@gmail.com', :password => '11111111', :password_confirmation => '11111111'
user = User.create! :email => 'doge@gmail.com', :password => '11111111', :password_confirmation => '11111111'
