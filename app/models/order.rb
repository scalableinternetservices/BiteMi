class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :listing
  validates :start_time, :end_time, presence: true
end
