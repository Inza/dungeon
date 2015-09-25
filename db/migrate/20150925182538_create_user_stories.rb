class CreateUserStories < ActiveRecord::Migration
  def change
    create_table :user_stories do |t|
      t.references :offer, index: true
      t.references :actor, index: true
      t.string :name
      t.string :desire
      t.string :world_change
      t.string :note
      t.references :user_story_category, index: true

      t.timestamps
    end
  end
end
