class CreateStoryConnections < ActiveRecord::Migration
  def self.up
    create_table :story_connections do |t|
      t.integer :story_id
      t.integer :event_id

      t.timestamps
    end
  end

  def self.down
    drop_table :story_connections
  end
end
