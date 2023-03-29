class AddStateToPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :state, :int
  end
end
