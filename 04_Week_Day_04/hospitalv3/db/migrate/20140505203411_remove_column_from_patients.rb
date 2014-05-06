class RemoveColumnFromPatients < ActiveRecord::Migration
  def change
    remove_column :patients, :institution_id, :integer
  end
end
