class Item < ActiveRecord::Base
  has_many :item_location_join_table
  has_many :locations, through: :item_location_join_table

  URGENCY_LEVEL = [
    "Need Now",
    "Getting Low"
  ]
end
