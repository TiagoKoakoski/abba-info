class CreateEmails < ActiveRecord::Migration[6.1]
  def change
    create_table :emails do |t|
      t.string :account
      t.references :company, null: false, foreign_key: true
      t.references :departament, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.string :note

      t.timestamps
    end
  end
end
