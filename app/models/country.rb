class Country < ApplicationRecord
  validates :name, presence: { strict: true }
  validates :name_confirmation, presence: true
  validates :capital_city , uniqueness: true
  validates :population, length: { in: 6..12 }
  after_create -> { puts "Congratulations!" }
end

