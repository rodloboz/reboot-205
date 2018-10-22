# list of STORE items
# welcome message
# display STORE items
#===== START LOOP
# ask user to pick item
# check if user choice exists
# store user choice
#===== END LOOP
# display bill
require 'byebug'

STORE = {
  'kiwi' => 1.25,
  'banana' => 0.5,
  'mango' => 4,
  'asparagus' => 9
}

CART = Hash.new { |hash, key| hash[key] = 0 }

def welcome_message
  puts "======================="
  puts " Welcome to INSTACART"
  puts "======================="
  puts "Welcome!!!"
  puts "\n\n"
end

def display_items
  puts "In our store today:"
  STORE.each do |item, price|
    puts "#{item}: #{price}€"
  end
end

def ask_for_item
  puts "Which item? (or 'quit' to checkout)"
  print "> "
end

def store_has_item?(item)
  STORE.key?(item)
end

def update_cart(item)
  # CART[item] += 1
  # if CART.key(item)
  #   CART[item] += 1
  # else
  #   CART[item] = 1
  # end
  CART[item] = CART[item] + 1
end

def display_bill
  puts "-------BILL---------"
  CART.each do |item, quantity|
    price = STORE[item]
    total_price = quantity * price
    puts "#{item}: #{quantity} X #{price}€ = #{total_price}€"
  end
  puts "--------------------"
  puts "TOTAL: #{calculate_cart_total}€"
  calculate_cart_total
end

def calculate_cart_total
  # iterate cart get price for item and multiply quanbity
  #                  [key, value]
  CART.reduce(0) do |sum, product|
    #           price            amount
    sum += STORE[product[0]] * product[1]
  end
end

welcome_message
display_items
loop do
  ask_for_item
  input = gets.chomp

  break if input =~ /^q(uit)?$/i

  if store_has_item?(input)
    update_cart(input)
  else
   puts "We don't have #{input} in store!
   "
  end
end
display_bill






