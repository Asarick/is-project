class Insurance < ApplicationRecord
  belongs_to :farmer
  belongs_to :crop
  belongs_to :insurance_package
  belongs_to :premium_type

  validates :acreage, presence: true, numericality: { greater_than: 0 }
  validates :total_premium, presence: true, numericality: { greater_than: 0 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :policy_number, presence: true, uniqueness: true

  before_validation :set_policy_number, on: :create
  before_validation :calculate_total_premium, on: :create

  private

  def set_policy_number
    self.policy_number = "CIP-#{SecureRandom.hex(4).upcase}"
  end

  def calculate_total_premium
    self.total_premium = insurance_package.base_premium * acreage
  end
end