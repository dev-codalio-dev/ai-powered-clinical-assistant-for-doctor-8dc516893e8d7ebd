# frozen_string_literal: true

class Summary < ApplicationRecord
  belongs_to :transcript

  rhino_owner :transcript
  rhino_references [ :transcript ]

  validates :summary_text, presence: true
  validates :generation_date, presence: true
end
