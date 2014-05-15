class CreateItemLocationJoinTables < ActiveRecord::Migration
  def change
    create_table :item_location_join_tables do |t|
      t.string :item_id
      t.string :location_id

      t.timestamps
    end
  end
end
