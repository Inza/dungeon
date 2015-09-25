class Team < ActiveRecord::Base
  has_many :team_memberships
  validates_formatting_of :invoicing_email, using: :email
  validates_formatting_of :invoicing_company_website, using: :url
end
