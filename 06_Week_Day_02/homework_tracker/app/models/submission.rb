class Submission < ActiveRecord::Base
  has_many :links
  accepts_nested_attributes_for :links, allow_destroy: true
  belongs_to :user
  belongs_to :assignment
  has_many :comments, as: :commentable

end
