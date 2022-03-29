FactoryBot.define do
  factory :device do
    name { "Device" }
    brand { "DevBrand" }
    model { "DevBrand" }
    ip { "192.168.0.0" }
    mac_address { "00:00:00:00:00" }
    place { "Location" }
    note { "Text" }
  end
end
