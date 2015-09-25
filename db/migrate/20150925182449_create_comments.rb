class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :user_story, index: true
      t.references :budget, index: true
      t.references :offer, index: true
      t.references :project, index: true
      t.references :invoice, index: true

      t.timestamps
    end
  end
end
