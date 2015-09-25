class TeamRole < ActiveRecord::Base
  has_many :project_memberships
  has_many :user_story_evaluations
end
