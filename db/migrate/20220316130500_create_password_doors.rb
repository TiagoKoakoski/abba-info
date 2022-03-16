class CreatePasswordDoors < ActiveRecord::Migration[6.1]
  def change
    create_table :password_doors do |t|
      t.integer :bottom
      t.integer :top

      t.timestamps
    end
  end
end
