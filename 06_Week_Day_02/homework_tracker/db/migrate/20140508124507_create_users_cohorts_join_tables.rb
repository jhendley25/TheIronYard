class CreateUsersCohortsJoinTables < ActiveRecord::Migration
  def change
    create_table :users_cohorts_join_tables do |t|
      t.integer :user_id
      t.integer :cohort_id

      t.timestamps
    end
  end
end
