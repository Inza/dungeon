class CreateTeamMemberships < ActiveRecord::Migration
  def change
    create_table :team_memberships do |t|
      t.references :user_role, index: true
      t.references :user, index: true
      t.references :team, index: true

      t.timestamps
    end
  end
end
