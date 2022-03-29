class AddNoteToComputer < ActiveRecord::Migration[6.1]
  def change
    add_column :computers, :note, :string
  end
end
