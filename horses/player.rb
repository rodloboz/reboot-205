def create_player
  # return a player
  puts "Type your name?"
  print "> "
  name = gets.chomp
  {name: name, balance: 100}
end

def display_balance(balance)
  puts "Your balance is #{balance}."
end

def player_won?(winning_horse, player_pick)
  winning_horse == player_pick
end

def update_balance(balance, amount)
  balance + amount
end
