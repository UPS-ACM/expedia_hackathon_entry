class Deal < ActiveRecord::Base
  has_many :hotel
  validates :name, :location_country, :location_city, :picture_path, :likes, :dislikes, presence: true
end
