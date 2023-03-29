class AddNumberToPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :number, :int, default: 1
  end
end
