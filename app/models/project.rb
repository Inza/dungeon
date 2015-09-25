class Project < ActiveRecord::Base
  belongs_to :team
  has_many :offers
  has_many :events
end
