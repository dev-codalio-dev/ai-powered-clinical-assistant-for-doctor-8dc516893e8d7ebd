# frozen_string_literal: true

FactoryBot.define do
  factory :transcript do
    transcript_text { "MyText" }
    generation_date { "2025-11-21 17:25:39" }
    call_recording { nil }
  end
end
