class Listing < ActiveRecord::Base
  has_many :orders
  belongs_to :user
  has_and_belongs_to_many :tags
end
