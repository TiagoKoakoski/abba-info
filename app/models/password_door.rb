class PasswordDoor < ApplicationRecord
  before_create :password_generate

  def password_generate
    if self.top.nil?
      self.top = rand(1000..9999)
    end
    if self.bottom.nil?
      self.bottom = rand(1000..9999)
    end
  end

end
