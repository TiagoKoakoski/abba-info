class AddPasswordToEmail < ActiveRecord::Migration[6.1]
  def change
    add_column :emails, :password, :string
  end
end
