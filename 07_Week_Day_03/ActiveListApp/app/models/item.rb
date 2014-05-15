class Item < ActiveRecord::Base
  has_many :item_location_join_table
  has_many :locations, through: :item_location_join_table
end
