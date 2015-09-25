class CreateUserStoryCategories < ActiveRecord::Migration
  def change
    create_table :user_story_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
