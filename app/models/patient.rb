# frozen_string_literal: true

class Patient < ApplicationRecord
  belongs_to :caregiver, class_name: "User"
  belongs_to :organization
  has_many :call_recordings, dependent: :destroy

  rhino_owner :caregiver
  rhino_references [ :caregiver, :organization ]

  validates :first_name, presence: true
  validates :last_name, presence: true
end
