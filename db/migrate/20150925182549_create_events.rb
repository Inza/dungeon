class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user, index: true
      t.references :project, index: true
      t.references :budget, index: true
      t.integer :message_type
      t.string :text
      t.integer :content_type
      t.string :value
      t.references :offer, index: true
      t.references :user_story_evaluation, index: true
      t.references :user_story, index: true

      t.timestamps
    end
  end
end
