# frozen_string_literal: true

class Transcript < ApplicationRecord
  belongs_to :call_recording
  has_one :summary, dependent: :destroy

  rhino_owner :call_recording
  rhino_references [ :call_recording ]

  validates :transcript_text, presence: true
  validates :generation_date, presence: true
end
