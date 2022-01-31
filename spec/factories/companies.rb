FactoryBot.define do
  factory :company do
    name { 'Empresa Teste ltda' }
    fantasy_name { 'Teste' }
    postal_code { '80610-280' }
    registration_number { '00.000.000/0001-01' }
    address { 'Endereço, numero' }
    district { 'Bairro' }
    city { 'Cidade' }
    state { 'Estado' }
    fone_number { '00 3000-0000' }
  end
end
