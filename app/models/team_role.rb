class TeamRole < ActiveRecord::Base
  has_many :project_memberships
end
