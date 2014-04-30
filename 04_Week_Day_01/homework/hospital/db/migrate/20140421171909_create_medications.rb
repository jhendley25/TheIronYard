class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.integer :patient_id
      t.string :name
      t.text :description
      t.string :amount_dispensed
      t.string :frequency
      
      t.timestamps
    end
  end
end


