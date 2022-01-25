class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :postal_code
      t.string :registration_number
      t.string :address
      t.string :district
      t.string :city
      t.string :state
      t.string :fone_number

      t.timestamps
    end
  end
end
