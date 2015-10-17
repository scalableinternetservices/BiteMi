class Listing < ActiveRecord::Base
  has_many :order
  has_and_belongs_to_many :tag
end
