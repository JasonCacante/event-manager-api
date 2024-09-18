# frozen_string_literal: true

class CreateEventParticipants < ActiveRecord::Migration[7.2]
  def up
    create_table :event_participants do |t|
      t.uuid :user
      t.uuid :event
      t.integer :status
      t.datetime :joined_at

      t.timestamps
    end
    add_index :event_participants, :user
    add_index :event_participants, :event
  end

  def down
    remove_index :event_participants, :user
    remove_index :event_participants, :event
    drop_table :event_participants
  end
end
