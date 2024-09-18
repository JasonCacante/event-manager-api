class Category < ApplicationRecord
  # Associations
  has_many :event_categories, dependent: :destroy
  has_many :events, through: :event_categories

  # Validations
  validates :name, presence: true, uniqueness: true
end
