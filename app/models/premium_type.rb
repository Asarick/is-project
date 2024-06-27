class PremiumType < ApplicationRecord
    has_many :insurances
    validates :name, presence: true, uniqueness: true
  end