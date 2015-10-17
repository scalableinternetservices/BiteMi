class User < ActiveRecord::Base
  has_many :listing
  has_many :order

	geocoded_by :address, :latitude => :lat, :longitude => :lon
	after_validation :geocode
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
