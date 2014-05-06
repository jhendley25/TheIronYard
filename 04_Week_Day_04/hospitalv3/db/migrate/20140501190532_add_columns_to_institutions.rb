class AddColumnsToInstitutions < ActiveRecord::Migration
  def change
    add_column :institutions, :name, :string
    add_column :institutions, :location, :string
    add_column :institutions, :phone_number, :string
  end
end
