FactoryBot.define do
  factory :computer do
    code { "MyString" }
    company 
    departament 
    person 
    computer_type 
    cpu { "MyString" }
    memory_type { "MyString" }
    memory { 1 }
    mother_board { "MyString" }
    storage_type { "MyString" }
    storage { 1 }
    operating_system 
    operating_system_key { "MyString" }
    office { "MyString" }
    gpu { "MyString" }
    mac_address { "MyString" }
    ip { "MyString" }
    status { 1 }
  end
end
