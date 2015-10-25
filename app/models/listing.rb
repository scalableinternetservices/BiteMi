class Listing < ActiveRecord::Base
  has_many :orders
  has_many :product_photos
  belongs_to :user
  has_and_belongs_to_many :tags
end
