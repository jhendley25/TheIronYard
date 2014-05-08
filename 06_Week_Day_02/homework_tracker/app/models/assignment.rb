class Assignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :cohort
  has_many :comments, as :commentable
  has_many :submissions
end
