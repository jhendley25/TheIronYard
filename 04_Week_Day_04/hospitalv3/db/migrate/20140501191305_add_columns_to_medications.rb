class AddColumnsToMedications < ActiveRecord::Migration
  def change
    add_column :medications, :patient_id, :integer
    add_column :medications, :name, :string
    add_column :medications, :description, :text
    add_column :medications, :amount_dispensed, :string
    add_column :medications, :frequency, :string
  end
end
