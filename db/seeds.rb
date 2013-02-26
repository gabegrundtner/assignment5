
Customer.delete_all
Order.delete_all
Item.delete_all

c0 = Customer.create!(contact: "Gabe", name: "Gabe's stuff", phone: "651-331-0535")
c1 = Customer.create!(contact: "John", name: "what you need", phone: "651-333-3333")
c2 = Customer.create!(contact: "Sam", name: "the spot", phone: "651-555-5555")

i1 = Item.create!(name: "rock")
i2 = Item.create!(name: "sock")
i3 = Item.create!(name: "soup")

Order.create!(quantity: 2, total_cost: 4.00, customer_id: c0.id, item_id: i1.id)
Order.create!(quantity: 1, total_cost: 3.00, customer_id: c0.id, item_id: i2.id)
Order.create!(quantity: 8, total_cost: 64.00, customer_id: c0.id, item_id: i3.id)

Order.create!(quantity: 1, total_cost: 2.00, customer_id: c1.id, item_id: i1.id)
Order.create!(quantity: 4, total_cost: 12.00, customer_id: c1.id, item_id: i2.id)
Order.create!(quantity: 1, total_cost: 8.00, customer_id: c1.id, item_id: i3.id)

Order.create!(quantity: 15, total_cost: 30.00, customer_id: c2.id, item_id: i1.id)
Order.create!(quantity: 2, total_cost: 6.00, customer_id: c2.id, item_id: i2.id)
Order.create!(quantity: 8, total_cost: 80.00, customer_id: c2.id, item_id: i3.id)