# frozen_string_literal: true

# EventCategory model with associations and validations
class EventCategory < ApplicationRecord
  # Associations
  belongs_to :event
  belongs_to :category

  # Validations
  validates :event_id, presence: true
  validates :category_id, presence: true
end
