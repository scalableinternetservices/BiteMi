class Listing < ActiveRecord::Base
  has_many :orders
  has_many :product_photos
  belongs_to :user
  acts_as_taggable
  validates :brand, :model, :condition, :start_time, :end_time, presence: true
  validates :price, presence: true,
  	numericality: {greater_than_or_equal_to: 0}

  has_attached_file :cover_photo
  validates_attachment_content_type :cover_photo, :content_type => /\Aimage\/.*\Z/

  def delete
    update_attribute(:status, "inactive")
  end

  searchable do
    text :brand, :model, :tag_list
    string :status
    latlon(:location) { Sunspot::Util::Coordinates.new(user.lat, user.lon) }
  end
end
