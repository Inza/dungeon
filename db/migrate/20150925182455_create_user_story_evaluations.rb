class CreateUserStoryEvaluations < ActiveRecord::Migration
  def change
    create_table :user_story_evaluations do |t|
      t.references :user, index: true
      t.references :budget, index: true
      t.references :user_story, index: true
      t.references :team_role, index: true
      t.integer :points
      t.integer :cost

      t.timestamps
    end
  end
end
