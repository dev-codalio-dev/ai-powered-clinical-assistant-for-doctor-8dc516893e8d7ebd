# frozen_string_literal: true

FactoryBot.define do
  factory :call_recording do
    audio_file_url { "MyString" }
    recording_date { "2025-11-21 17:25:26" }
    duration { 1 }
    patient { nil }
    caregiver { nil }
  end
end
