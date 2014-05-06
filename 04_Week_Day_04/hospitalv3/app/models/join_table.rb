class JoinTable < ActiveRecord::Base
  belongs_to :patient
  belongs_to :institution
end
