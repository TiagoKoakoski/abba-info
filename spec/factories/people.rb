FactoryBot.define do
  factory :person do
    name { "Nome Sobrenome" }
    branch_line { "ramal" }
    company
    departament
  end
end
