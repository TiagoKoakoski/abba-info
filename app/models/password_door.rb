class PasswordDoor < ApplicationRecord
  before_create :password_generate
  validates :top, length: { is: 4 }
  validates :bottom, length: { is: 4 }
  validates :top, uniqueness: true
  validates :bottom, uniqueness: true

  def password_generate
    if self.top.nil?
      self.top = rand(1000..9999)
    end
    if self.bottom.nil?
      self.bottom = rand(1000..9999)
    end
  end

end
