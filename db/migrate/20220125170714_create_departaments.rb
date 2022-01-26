class CreateDepartaments < ActiveRecord::Migration[6.1]
  def change
    create_table :departaments do |t|
      t.string :name
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
