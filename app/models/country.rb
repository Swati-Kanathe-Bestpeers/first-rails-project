class Country < ApplicationRecord
  validates :name,uniqueness: true, acceptance: { message: 'must be abided' } 
  
  validates :capital_city , uniqueness: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :population, length: { in: 6..12 }
  validates :name, confirmation: true
  validates :name_confirmation, presence: true
end
