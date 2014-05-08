class Cohort < ActiveRecord::
  belongs_to :location
  has_many :users_cohorts_join_tables
  has_many :users, through: :users_cohorts_join_tables
  has_many :assignments
end
