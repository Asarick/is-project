class MarketBooking < ApplicationRecord
  belongs_to :market
  belongs_to :user

  validates :date, presence: true
end