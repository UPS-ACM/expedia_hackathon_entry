class Hotel < ActiveRecord::Base
	validates :name, :location_country, :location_city, :min_price_q1, :min_price_q2, :min_price_q3, :min_price_q4, presence: true
end