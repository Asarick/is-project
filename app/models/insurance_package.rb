class InsurancePackage < ApplicationRecord
    has_many :insurances
    validates :name, presence: true, uniqueness: true
    validates :base_premium, presence: true, numericality: { greater_than: 0 }
  end