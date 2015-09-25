class Invoice < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  belongs_to :budget
  has_many :comments
end
