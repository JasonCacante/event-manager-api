# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[7.2]
  def up
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.datetime :start_time
      t.datetime :end_time
      t.uuid :created_by

      t.timestamps
    end
    add_index :events, :created_by
  end

  def down
    remove_index :events, :created_by
    drop_table :events
  end
end
