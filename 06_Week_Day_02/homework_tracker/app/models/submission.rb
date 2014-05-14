class Submission < ActiveRecord::Base
  has_many :links
  accepts_nested_attributes_for :links, allow_destroy: true
  belongs_to :user
  belongs_to :assignment
  has_many :comments, as: :commentable

  include Workflow
  workflow do 
    state :new_submission do
      event :go_to_reviewing, transitions_to: :reviewing
      event :go_to_complete, transitions_to: :complete
      event :go_to_incomplete, transitions_to: :incomplete
    end
    state :reviewing do
      event :go_to_complete, transitions_to: :complete
      event :go_to_incomplete, transitions_to: :incomplete
    end
    state :incomplete do
      event :go_to_reviewing, transitions_to: :reviewing
      event :go_to_complete, transitions_to: :complete
    end
    state :complete
  end
end
