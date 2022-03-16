class AddCodenameImageToPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :codename, :string
    add_column :people, :image, :string
  end
end
