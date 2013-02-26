module CustomersHelper
	def display_customers(customers)
		the_string = "<table class='table table-striped table-bordered'><thead><tr><th>Customer Name</th><th>Phone</th><th>Contact</th></tr></thead><tbody>"
		customers.each do |customer|
			cn = customer.name
			p = customer.phone
			c = customer.contact
			the_string += "<tr><td>#{cn}</td><td>#{p}</td><td>#{c}</td><td>#{link_to 'Show', customer}</td><td>#{link_to 'Edit', edit_customer_path(customer)}</td><td>#{link_to 'Destroy', customer, confirm: 'Are you sure?', method: :delete}</td><td>#{link_to 'Place Order', new_customer_order_path(customer)}</td><td>#{link_to 'View Oders', customer_orders_path(customer)}</td></tr>"
		end
		the_string += "</tbody></table>"
		the_string.html_safe
	end
end
