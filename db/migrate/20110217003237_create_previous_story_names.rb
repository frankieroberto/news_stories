class CreatePreviousStoryNames < ActiveRecord::Migration
  def self.up
    create_table :previous_story_names do |t|
      t.string :name
      t.integer :story_id

      t.timestamps
    end
  end

  def self.down
    drop_table :previous_story_names
  end
end
