# frozen_string_literal: true

class EventParticipant < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :event

  # Validations
  validates :user_id, presence: true
  validates :event_id, presence: true
  validates :status, presence: true

  # Enum for participation status
  enum status: { pending: 0, confirmed: 1, cancelled: 2 }

  # Scopes
  scope :confirmed, -> { where(status: :confirmed) }
  scope :pending, -> { where(status: :pending) }

  # Class Method: Confirm a user's participation in an event
  def self.confirm_participation(user, event)
    find_by(user: user, event: event)&.update(status: :confirmed)
  end
end
