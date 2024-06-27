class Farmer < ApplicationRecord
    has_many :insurances
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :phone, presence: true
  end