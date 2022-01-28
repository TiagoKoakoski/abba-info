require 'securerandom'
class Computer < ApplicationRecord
  enum status: { ativo: 0, menutençao: 1, desativado: 2}
  belongs_to :company
  belongs_to :departament
  belongs_to :person
  belongs_to :computer_type
  belongs_to :operating_system
  validates :cpu, presence: true
  before_create :create_code

  private

  def create_code
    self.code = "#{self.company.fantasy_name}-#{self.departament.name}-" + SecureRandom.hex(1)
  end
end
