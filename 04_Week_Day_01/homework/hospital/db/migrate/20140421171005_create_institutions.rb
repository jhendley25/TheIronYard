class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :location
      t.string :phone_number
      t.timestamps
    end
  end
end
  