precision_amount   = 2
precision_quantity = 3

puts "\nPlease, collect your cart (enter \"stop\" to finish)."

cart = {}

while true do
  print "Item name: "
  item = gets.chomp.to_sym
  
  break if item == :stop

  print "Price:     "
  price = gets.to_f

  print "Quantity:  "
  quantity = gets.to_f

  cart[item] = { price: price, quantity: quantity}
end

puts "\nThank you for your orders.\nYour cart contains #{cart.size} items:"

total = 0.0

cart.each do |item, data|
  amount = data[:price] * data[:quantity]
  total += amount
  puts "Item: #{item.to_s}. "\
       "Price: #{data[:price].round(precision_amount)}. "\
       "Quantity: #{data[:quantity].round(precision_quantity)}. "\
       "Amount: #{amount.round(precision_amount)}."
end

puts "Total amount: #{total.round(precision_amount)}.\nHave a good day.\n\n"
