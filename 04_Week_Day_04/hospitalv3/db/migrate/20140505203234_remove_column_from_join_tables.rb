class RemoveColumnFromJoinTables < ActiveRecord::Migration
  def change
    remove_column :join_tables, :doctor_id, :string
  end
end
