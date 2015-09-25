class Budget < ActiveRecord::Base
  belongs_to :offer
  belongs_to :user
  has_many :events
end
