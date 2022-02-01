FactoryBot.define do
  factory :email do
    account { 'email@email.com' }
    company
    departament
    person
    note { 'Observações' }
  end
end
