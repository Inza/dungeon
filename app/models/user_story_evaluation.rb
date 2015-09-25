class UserStoryEvaluation < ActiveRecord::Base
  belongs_to :user
  belongs_to :budget
  belongs_to :user_story
  belongs_to :team_role
  has_many :events
end
