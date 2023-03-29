class Person < ApplicationRecord
  belongs_to :company
  belongs_to :departament
  has_many :emails
  validates :name, presence: true
  enum state: { active: 1, inactive: 2}

  before_save do
    self.number = rand(1010) if self.number.blank?
    check_fields
  end


  def check_fields
    if codename.blank? || image.blank?
      poke = Faraday.get("https://pokeapi.co/api/v2/pokemon/#{self.number}")
      parsed = JSON.parse(poke.body)
      self.codename = parsed['name'].capitalize
      self.image = parsed["sprites"]["front_default"]
    end
  end

end
