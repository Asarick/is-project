class Market < ApplicationRecord
    has_many :market_bookings
  
    validates :name, presence: true
    validates :location, presence: true
    validates :open_days, presence: true
  end
  