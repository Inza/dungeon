class UserStory < ActiveRecord::Base
  belongs_to :offer
  belongs_to :actor
  belongs_to :user_story_category
  has_many :user_story_evaluations
  has_many :events
end
