class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :year      
      t.string :rating
      t.string :genre
      t.string :criticrating
      t.string :description
      t.timestamps
    end
  end
end
