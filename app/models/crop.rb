class Crop < ApplicationRecord
    has_many :insurances
    validates :name, presence: true, uniqueness: true
  end