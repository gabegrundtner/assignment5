module OrdersHelper
	def customer_name(order)
		order.customer.name unless order.customer.nil?
	end

	def display_orders(customer)
		if customer.orders.first.nil? != true
		the_string = "<table class='table table-striped table-bordered'><thead><tr><th>Customer Name</th><th>Order ID</th><th>Item Name</th><th>Quantity</th><th>Total Cost</th></tr></thead><tbody>"
		customer.orders.each do |order|
			cn = Customer.find(order.customer_id).name
			id1 = order.id
			item = Item.find(order.item_id).name
			q = order.quantity
			tc = order.total_cost
			the_string += "<tr><td>#{cn}</td><td>#{id1}</td><td>#{item}</td><td>#{q}</td><td>#{tc}</td><td>#{link_to 'Show', order}</td><td>#{link_to 'Edit', edit_order_path(order)}</td><td>#{link_to 'Destroy', order, confirm: 'Are you sure?', method: :delete}</td></tr>"
		end
		the_string += "</tbody></table>"
		the_string.html_safe
	  else
	  	the_string = "<div class='span10'><p>no orders have been placed</p></div>"
	  	the_string.html_safe
	  end
	end
end
