class Actor < ActiveRecord::Base
  belongs_to :offer
  has_many :user_stories
end
