class User < ApplicationRecord
  has_secure_password
  has_many :products
  has_many :market_bookings

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :role, presence: true, inclusion: { in: %w[farmer buyer admin] }

  def farmer?
    role == 'farmer'
  end

  def buyer?
    role == 'buyer'
  end

  def admin?
    role == 'admin'
  end
end