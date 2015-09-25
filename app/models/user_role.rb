class UserRole < ActiveRecord::Base
  has_many :team_memberships
end
