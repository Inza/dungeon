class ProjectMembership < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  belongs_to :team_role
end
