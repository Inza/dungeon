class UserStoryCategory < ActiveRecord::Base
  has_many :user_stories
end
