class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.string :ip
      t.string :mac_address
      t.string :place
      t.string :note

      t.timestamps
    end
  end
end
