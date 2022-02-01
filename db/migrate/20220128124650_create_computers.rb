class CreateComputers < ActiveRecord::Migration[6.1]
  def change
    create_table :computers do |t|
      t.string :code
      t.references :company, null: false, foreign_key: true
      t.references :departament, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.references :computer_type, null: false, foreign_key: true
      t.string :cpu
      t.string :memory_type
      t.integer :memory
      t.string :mother_board
      t.string :storage_type
      t.integer :storage
      t.references :operating_system, null: false, foreign_key: true
      t.string :operating_system_key
      t.string :office
      t.string :gpu
      t.string :mac_address
      t.string :ip
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
