class HomeController < ApplicationController
  def index
    @people = Person.all
    @emails = Email.all
    @computers = Computer.all
    @date = Time.now
  end
end
