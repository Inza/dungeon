class Budget < ActiveRecord::Base
  belongs_to :offer
  belongs_to :user
  has_many :events
  has_many :user_story_evaluations
  has_many :comments
  has_one :invoice
end
