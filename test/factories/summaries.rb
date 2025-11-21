# frozen_string_literal: true

FactoryBot.define do
  factory :summary do
    summary_text { "MyText" }
    generation_date { "2025-11-21 17:25:51" }
    transcript { nil }
  end
end
