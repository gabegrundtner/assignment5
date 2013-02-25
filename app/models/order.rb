class Order < ActiveRecord::Base
  attr_accessible :customer_id, :item_id, :item_name, :quantity, :total_cost
end
