class Project < ActiveRecord::Base
  belongs_to :team
  has_many :offers
  has_many :events
  has_many :project_memberships
end
