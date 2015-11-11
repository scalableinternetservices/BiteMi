class Listing < ActiveRecord::Base
  has_many :orders
  has_many :product_photos
  belongs_to :user
  acts_as_taggable
  validates :brand, :model, :condition, :start_time, :end_time, presence: true
  validates :price, presence: true, 
  	numericality: {greater_than_or_equal_to: 0}

  def delete
    update_attribute(:status, "inactive")
  end
end
