class Listing < ActiveRecord::Base
  has_many :orders
  has_many :product_photos
  belongs_to :user
  acts_as_taggable

  searchable do
    text :brand, :model, :tag_list
    latlon(:location) { Sunspot::Util::Coordinates.new(user.lat, user.lon) }
  end
end
