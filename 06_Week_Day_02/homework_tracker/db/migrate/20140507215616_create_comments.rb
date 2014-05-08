class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :user_id
      t.string :commentable_id
      t.string :commentable_type

      t.timestamps
    end
  end
end
