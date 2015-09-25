class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  belongs_to :budget
  belongs_to :offer
  belongs_to :user_story_evaluation
  belongs_to :user_story
end
