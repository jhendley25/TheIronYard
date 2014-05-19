class RemovingLocationIdFromItemsTable < ActiveRecord::Migration
  def change
    remove_column(:items, :location_id)
  end
end
