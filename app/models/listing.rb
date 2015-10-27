class Listing < ActiveRecord::Base
  has_many :orders
  has_many :product_photos
  belongs_to :user
  acts_as_taggable
end
