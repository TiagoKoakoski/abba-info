class HomeController < ApplicationController
  def index
    @people = Person.all
    @emails = Email.all
    @computers = Computer.all
    @date = Time.now
    @password_door = PasswordDoor.last
    @companies = Company.all
    @departaments = Departament.all
    @users = User.all
  end
end
