Customer.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('customers')
PizzaTruck.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('pizza_trucks')
Pizza.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('pizzas')
Order.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('orders')
Topping.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('toppings')
PizzaTopping.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('pizza_toppings')

puts "Seeding Customers..."
customer1 = Customer.create(username: "Allen", password_digest: "123", home_address: "1111 Texas Lane")
customer2 = Customer.create(username: "Justin", password_digest: "123", home_address: "1111 California Lane")
customer3 = Customer.create(username: "Hadi", password_digest: "123", home_address: "1111 Las Vegas Lane")

puts "Seeding PizzaTruck..."
pizza_truck = PizzaTruck.create(name: "West Coast Slice")

puts "Seeding Pizzas..."
# Meat Lovers 
pizza1 = Pizza.create(img_url: "http://veryculinary.com/wp-content/uploads/2017/01/Meat-lovers-pizza.jpg", name: "Meat Lovers", size: "Medium", price: 12)
# Supreme
pizza2 = Pizza.create(img_url: "https://www.caseys.com/medias/sys_master/images/h47/h8b/8796496461854/8173_base-400x400/8173-base-400x400.png", name: "Supreme", size: "Medium", price: 14)
# Hawaiian 
pizza3 = Pizza.create(img_url: "https://prods3.imgix.net/images/articles/2017_05/nonfeatured-hawaiian-pizza-origins.jpg", name: "Hawaiian", size: "Medium", price: 13)
# Chicken Pesto
pizza4 = Pizza.create(img_url: "https://theblondcook.com/wp-content/uploads/2021/03/pesto-chicken-pizza-6.jpg", name: "Chicken Pesto", size: "Medium", price: 12)
# BBQ Chicken 
pizza5 = Pizza.create(img_url: "https://www.tasteandtellblog.com/wp-content/uploads/2021/01/BBQ-Chicken-Pizza-3.jpg", name: "BBQ Chicken", size: "Medium", price: 15)
# Vegetarian
pizza6 = Pizza.create(img_url: "https://www.twopeasandtheirpod.com/wp-content/uploads/2021/03/Veggie-Pizza-8-500x375.jpg", name: "Veggie Lovers", size: "Medium", price: 11)
#Margherita 
pizza7 = Pizza.create(img_url: "https://www.ezcater.com/lunchrush/wp-content/uploads/sites/2/2017/10/shutterstock_347791016.jpg.webp", name: "Margherita", size: "Medium", price: 10)
#Buffalo 
pizza8 = Pizza.create(img_url: "https://www.tablefortwoblog.com/wp-content/uploads/2019/01/buffalo-chicken-pizza-recipe-photos-tablefortwoblog-3.jpg", name: "Buffalo", size: "Medium", price: 14)

puts "Seeding Orders..."
order1 = Order.create(pizza_truck_id: pizza_truck.id, customer_id: customer1.id, pizza_id: pizza1.id)
order2 = Order.create(pizza_truck_id: pizza_truck.id, customer_id: customer1.id, pizza_id: pizza6.id)
order3 = Order.create(pizza_truck_id: pizza_truck.id, customer_id: customer2.id, pizza_id: pizza2.id)
order4 = Order.create(pizza_truck_id: pizza_truck.id, customer_id: customer2.id, pizza_id: pizza3.id)
order5 = Order.create(pizza_truck_id: pizza_truck.id, customer_id: customer3.id, pizza_id: pizza7.id)
order6 = Order.create(pizza_truck_id: pizza_truck.id, customer_id: customer3.id, pizza_id: pizza4.id)

puts "Seeding Toppings..."
topping1 = Topping.create(name: "Italian Sausage")
topping2 = Topping.create(name: "Bacon")
topping3 = Topping.create(name: "Pepperoni")
topping4 = Topping.create(name: "Ground beef")
topping5 = Topping.create(name: "Ham")
topping6 = Topping.create(name: "Black Olives")
topping7 = Topping.create(name: "Broccoli")
topping8 = Topping.create(name: "Spinach")
topping9 = Topping.create(name: "Anchovies")
topping10 = Topping.create(name: "Sun-Dried Tomato")
topping11 = Topping.create(name: "Grilled Chicken")
topping12= Topping.create(name: "Jalapeno")
topping13= Topping.create(name: "Roasted Red Peppers")
topping14= Topping.create(name: "Green Peppers")
topping15= Topping.create(name: "Onions")
topping16= Topping.create(name: "Pineapple")
topping17 = Topping.create(name: "Mushrooms")
topping18 = Topping.create(name: "Cheese")
topping19 = Topping.create(name: "Marinara")
topping20 = Topping.create(name: "BBQ sauce")
topping21 = Topping.create(name: "Cilantro")
topping22 = Topping.create(name: "Feta")
topping23 = Topping.create(name: "Garlic")
topping25 = Topping.create(name: "Parmesan")
topping26 = Topping.create(name: "Basil")
topping27 = Topping.create(name: "Tomato")
topping28 = Topping.create(name: "Pesto")
topping29 = Topping.create(name: "Artichoke Hearts")
topping30 = Topping.create(name: "Capers")
topping31 = Topping.create(name: "Mozzarella")
topping32 = Topping.create(name: "Buffalo Hot Sauce")
topping33 = Topping.create(name: "Parsley")
topping34 = Topping.create(name: "Provolone")
topping35 = Topping.create(name: "American Cheese")


puts "Seeding PizzaToppings..."
# Meat Lovers Pizza
pizza_topping1 = PizzaTopping.create(pizza_id: pizza1.id, topping_id: topping1.id)
pizza_topping2 = PizzaTopping.create(pizza_id: pizza1.id, topping_id: topping2.id)
pizza_topping3 = PizzaTopping.create(pizza_id: pizza1.id, topping_id: topping3.id)
pizza_topping4 = PizzaTopping.create(pizza_id: pizza1.id, topping_id: topping4.id)
pizza_topping5 = PizzaTopping.create(pizza_id: pizza1.id, topping_id: topping5.id)
pizza_topping6 = PizzaTopping.create(pizza_id: pizza1.id, topping_id: topping18.id)
pizza_topping7 = PizzaTopping.create(pizza_id: pizza1.id, topping_id: topping19.id)

# Supreme Pizza
pizza_topping8 = PizzaTopping.create(pizza_id: pizza2.id, topping_id: topping1.id)
pizza_topping9 = PizzaTopping.create(pizza_id: pizza2.id, topping_id: topping3.id)
pizza_topping10 = PizzaTopping.create(pizza_id: pizza2.id, topping_id: topping6.id)
pizza_topping11 = PizzaTopping.create(pizza_id: pizza2.id, topping_id: topping14.id)
pizza_topping12 = PizzaTopping.create(pizza_id: pizza2.id, topping_id: topping15.id)
pizza_topping13= PizzaTopping.create(pizza_id: pizza2.id, topping_id: topping17.id)
pizza_topping14 = PizzaTopping.create(pizza_id: pizza2.id, topping_id: topping18.id)
pizza_topping15 = PizzaTopping.create(pizza_id: pizza2.id, topping_id: topping19.id)

# Hawaiian Pizza 
pizza_topping16= PizzaTopping.create(pizza_id: pizza3.id, topping_id: topping2.id)
pizza_topping17= PizzaTopping.create(pizza_id: pizza3.id, topping_id: topping5.id)
pizza_topping18= PizzaTopping.create(pizza_id: pizza3.id, topping_id: topping16.id)
pizza_topping19 = PizzaTopping.create(pizza_id: pizza3.id, topping_id: topping18.id)
pizza_topping20 = PizzaTopping.create(pizza_id: pizza3.id, topping_id: topping19.id)

# Chicken Pesto Pizza
pizza_topping20 = PizzaTopping.create(pizza_id: pizza4.id, topping_id: topping11.id)
pizza_topping21 = PizzaTopping.create(pizza_id: pizza4.id, topping_id: topping25.id)
pizza_topping22 = PizzaTopping.create(pizza_id: pizza4.id, topping_id: topping27.id)
pizza_topping23 = PizzaTopping.create(pizza_id: pizza4.id, topping_id: topping28.id)
pizza_topping24 = PizzaTopping.create(pizza_id: pizza4.id, topping_id: topping29.id)
pizza_topping25 = PizzaTopping.create(pizza_id: pizza4.id, topping_id: topping30.id)

# BBQ Chicken Pizza
pizza_topping26 = PizzaTopping.create(pizza_id: pizza5.id, topping_id: topping11.id)
pizza_topping27 = PizzaTopping.create(pizza_id: pizza5.id, topping_id: topping15.id)
pizza_topping28 = PizzaTopping.create(pizza_id: pizza5.id, topping_id: topping19.id)
pizza_topping29 = PizzaTopping.create(pizza_id: pizza5.id, topping_id: topping20.id)
pizza_topping30 = PizzaTopping.create(pizza_id: pizza5.id, topping_id: topping21.id)

# Veggie Lovers Pizza 
pizza_topping31 = PizzaTopping.create(pizza_id: pizza6.id, topping_id: topping6.id)
pizza_topping32 = PizzaTopping.create(pizza_id: pizza6.id, topping_id: topping13.id)
pizza_topping33 = PizzaTopping.create(pizza_id: pizza6.id, topping_id: topping14.id)
pizza_topping34 = PizzaTopping.create(pizza_id: pizza6.id, topping_id: topping15.id)
pizza_topping35 = PizzaTopping.create(pizza_id: pizza6.id, topping_id: topping17.id)
pizza_topping36 = PizzaTopping.create(pizza_id: pizza6.id, topping_id: topping19.id)
pizza_topping37 = PizzaTopping.create(pizza_id: pizza6.id, topping_id: topping26.id)
pizza_topping38 = PizzaTopping.create(pizza_id: pizza6.id, topping_id: topping27.id)

# Margherita Pizza
pizza_topping39 = PizzaTopping.create(pizza_id: pizza7.id, topping_id: topping19.id)
pizza_topping40 = PizzaTopping.create(pizza_id: pizza7.id, topping_id: topping26.id)
pizza_topping41 = PizzaTopping.create(pizza_id: pizza7.id, topping_id: topping27.id)
pizza_topping42 = PizzaTopping.create(pizza_id: pizza7.id, topping_id: topping31.id)

# Buffalo Pizza 
pizza_topping43 = PizzaTopping.create(pizza_id: pizza8.id, topping_id: topping11.id)
pizza_topping43 = PizzaTopping.create(pizza_id: pizza8.id, topping_id: topping15.id)
pizza_topping43 = PizzaTopping.create(pizza_id: pizza8.id, topping_id: topping32.id)
pizza_topping43 = PizzaTopping.create(pizza_id: pizza8.id, topping_id: topping33.id)
pizza_topping43 = PizzaTopping.create(pizza_id: pizza8.id, topping_id: topping34.id)
pizza_topping43 = PizzaTopping.create(pizza_id: pizza8.id, topping_id: topping35.id)


puts "Finished seeding!"