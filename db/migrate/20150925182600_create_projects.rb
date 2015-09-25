class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :team, index: true
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
