class Email < ApplicationRecord
  belongs_to :company
  belongs_to :departament
  belongs_to :person
end
