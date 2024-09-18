# frozen_string_literal: true

class CreateEventCategories < ActiveRecord::Migration[7.2]
  def up
    create_table :event_categories do |t|
      t.uuid :event
      t.uuid :category

      t.timestamps
    end
    add_index :event_categories, :event
    add_index :event_categories, :category
  end

  def down
    remove_index :event_categories, :event
    remove_index :event_categories, :category
    drop_table :event_categories
  end
end
