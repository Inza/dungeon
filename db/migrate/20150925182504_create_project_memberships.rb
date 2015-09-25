class CreateProjectMemberships < ActiveRecord::Migration
  def change
    create_table :project_memberships do |t|
      t.references :user, index: true
      t.references :project, index: true
      t.references :team_role, index: true

      t.timestamps
    end
  end
end
