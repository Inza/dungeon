class UserStory < ActiveRecord::Base
  belongs_to :offer
  belongs_to :actor
  belongs_to :user_story_category
end
