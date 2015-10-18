class Listing < ActiveRecord::Base
  has_many :order
  belongs_to :user
  has_and_belongs_to_many :tag
end
