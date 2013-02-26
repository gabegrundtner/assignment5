class Order < ActiveRecord::Base
  attr_accessible :customer_id, :item_id, :quantity, :total_cost #, :item_name
  belongs_to :customer
  belongs_to :item
  validates :customer_id, :presence=> { :message=>"Customer name must be provided" }
end
