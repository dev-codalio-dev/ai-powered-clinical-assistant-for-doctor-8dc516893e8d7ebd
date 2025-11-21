class CreateTranscripts < ActiveRecord::Migration[7.2]
  def change
    create_table :transcripts do |t|
      t.text :transcript_text, null: false
      t.datetime :generation_date, null: false
      t.references :call_recording, null: false, foreign_key: true

      t.timestamps
    end
  end
end
