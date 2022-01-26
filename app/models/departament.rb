class Departament < ApplicationRecord
  belongs_to :company
  validates :name, presence: true
  has_many :people
end
