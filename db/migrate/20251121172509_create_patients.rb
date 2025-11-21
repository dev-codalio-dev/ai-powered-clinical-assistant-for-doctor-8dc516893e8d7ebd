class CreatePatients < ActiveRecord::Migration[7.2]
  def change
    create_table :patients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :date_of_birth
      t.string :phone_number
      t.text :address
      t.references :caregiver, null: false, foreign_key: { to_table: :users }
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
