class ItemLocationJoinTablesFromStringToInteger < ActiveRecord::Migration
  def change
    change_column :item_location_join_tables, :item_id, :integer
    change_column :item_location_join_tables, :location_id, :integer 
    
  end
end
