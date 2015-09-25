class Offer < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  belongs_to :actor
  has_many :budgets
end
