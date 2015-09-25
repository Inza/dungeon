class TeamMembership < ActiveRecord::Base
  belongs_to :user_role
  belongs_to :user
  belongs_to :team
end
