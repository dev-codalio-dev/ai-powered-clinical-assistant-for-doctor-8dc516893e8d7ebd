class CreateCallRecordings < ActiveRecord::Migration[7.2]
  def change
    create_table :call_recordings do |t|
      t.string :audio_file_url, null: false
      t.datetime :recording_date, null: false
      t.integer :duration, null: false
      t.references :patient, null: false, foreign_key: true
      t.references :caregiver, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
