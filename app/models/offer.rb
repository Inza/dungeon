class Offer < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  belongs_to :actor
  has_many :budgets
  has_many :actors
  has_many :user_stories
  has_many :attachments
  has_many :requirements
end
