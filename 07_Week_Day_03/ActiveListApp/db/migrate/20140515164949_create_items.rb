class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :urgency_level
      t.integer :location_id
      t.string :workflow_state
      t.timestamps
    end
  end
end
