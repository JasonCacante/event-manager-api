# frozen_string_literal: true

# User model with associations, validations, and scopes
class User < ApplicationRecord
  # Associations
  has_many :events, foreign_key: :created_by, dependent: :destroy
  has_many :event_participants, dependent: :destroy
  has_many :participated_events, through: :event_participants, source: :event

  # Validations
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 6 }

  # Enum for user roles
  enum :role, { user: 0, admin: 1 }

  # Scopes (Optional)
  scope :admins, -> { where(role: :admin) }
  scope :regular_users, -> { where(role: :user) }

  # Secure password (if you're using bcrypt)
  has_secure_password
end
