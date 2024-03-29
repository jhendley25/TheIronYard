class User < ActiveRecord::Base
  has_many :users_cohorts_join_tables
  has_many :cohorts, through: :users_cohorts_join_tables
  has_many :assignments
  has_many :submissions

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
