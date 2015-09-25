class CreateTeamRoles < ActiveRecord::Migration
  def change
    create_table :team_roles do |t|
      t.string :name
      t.string :identifier

      t.timestamps
    end
  end
end
