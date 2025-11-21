# frozen_string_literal: true

class CallRecording < ApplicationRecord
  belongs_to :patient
  belongs_to :caregiver, class_name: "User"
  has_one :transcript, dependent: :destroy

  rhino_owner :patient
  rhino_references [ :patient, :caregiver ]

  validates :audio_file_url, presence: true
  validates :recording_date, presence: true
  validates :duration, presence: true
end
