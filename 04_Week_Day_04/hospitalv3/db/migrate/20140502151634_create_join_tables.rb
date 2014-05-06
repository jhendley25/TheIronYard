class CreateJoinTables < ActiveRecord::Migration
  def change
    create_table :join_tables do |t|
      t.string :institution_id
      t.string :patient_id
      t.string :doctor_id

      t.timestamps
    end
  end
end
