# frozen_string_literal: true

# Event model with associations, validations, and scopes
class Event < ApplicationRecord
  # Associations
  belongs_to :creator, class_name: "User", foreign_key: "created_by"
  has_many :event_participants, dependent: :destroy
  has_many :participants, through: :event_participants, source: :user
  has_many :event_categories, dependent: :destroy
  has_many :categories, through: :event_categories

  # Validations
  validates :name, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :end_time_after_start_time

  # Custom validation
  def end_time_after_start_time
    return if end_time.blank? || start_time.blank?

    if end_time < start_time
      errors.add(:end_time, "must be after the start time")
    end
  end

  # Scopes
  scope :upcoming, -> { where("start_time > ?", Time.now) }
  scope :past, -> { where("end_time < ?", Time.now) }

  # Class Method: Find all events a user is participating in
  def self.participated_by(user)
    joins(:event_participants).where(event_participants: { user_id: user.id })
  end
end
