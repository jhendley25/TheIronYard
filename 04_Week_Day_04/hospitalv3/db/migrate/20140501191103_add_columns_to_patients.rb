class AddColumnsToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :institution_id, :integer
    add_column :patients, :name, :string
    add_column :patients, :workflow_state, :string
    add_column :patients, :description, :text
  end
end
