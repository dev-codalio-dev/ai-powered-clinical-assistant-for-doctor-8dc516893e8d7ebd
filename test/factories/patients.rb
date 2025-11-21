# frozen_string_literal: true

FactoryBot.define do
  factory :patient do
    first_name { "MyString" }
    last_name { "MyString" }
    date_of_birth { "2025-11-21" }
    phone_number { "MyString" }
    address { "MyText" }
    caregiver { nil }
    organization { nil }
  end
end
