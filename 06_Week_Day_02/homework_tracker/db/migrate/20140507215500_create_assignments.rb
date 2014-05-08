class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :body
      t.integer :cohort_id
      t.integer :user_id

      t.timestamps
    end
  end
end
