class Company < ApplicationRecord
  validates :name, :registration_number, presence: true
  validates :fantasy_name, presence: true
  has_many :departaments
  has_many :people
end
