class Person < ApplicationRecord
  belongs_to :company
  belongs_to :departament
  has_many :emails
end
