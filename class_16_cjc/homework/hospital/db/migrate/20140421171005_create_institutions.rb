class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :institution_name
      t.string :location
      t.string :phone_number
      t.timestamps
    end
  end
end
  