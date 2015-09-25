class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :user_story
  belongs_to :budget
  belongs_to :offer
  belongs_to :project
  belongs_to :invoice
end
