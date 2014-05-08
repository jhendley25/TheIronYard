class Submission < ActiveRecord::Base
  has_many :links
  belongs_to :user
  belongs_to :assignment
  has_many :comments, as :commentable

end
