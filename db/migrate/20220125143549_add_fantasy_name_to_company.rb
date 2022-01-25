class AddFantasyNameToCompany < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :fantasy_name, :string
  end
end
