# ask player name
# store player name => HASH
# ======START LOOP
# display list of horses => ARRAY of Strings
# ask player to pick a horse
# pick a random winner => SHUFFLE/SAMPLE
# determine if player won or lost
# update balance (win: +50, lost: -10)
# check if user has balance
# ask user if they want to continue
# ====END LOOP


# { name: "Rui", balance: 100 }

require_relative "welcome"
require_relative "player"
require_relative "horses"


HORSES = [
  "Jameson",
  "Paolo",
  "Ronaldo",
  "Star",
  "Beans",
  "My Little Poney"
]

puts_welcome
PLAYER = create_player

loop do
  puts "Here's this race's roster:"
  display_horses
  display_balance(PLAYER[:balance])

  ask_for_horse

  horse_index = gets.chomp.to_i - 1
  player_pick = find_horse(horse_index)
  winning_horse = randomize_winner

  puts "The winning horse is: #{winning_horse}"
  if player_won?(winning_horse, player_pick)
    # add 50
    PLAYER[:balance] = update_balance(PLAYER[:balance], 50)
    puts "You win!"
  else
    # subtrack 10
    PLAYER[:balance] = update_balance(PLAYER[:balance], -10)
    puts "You lost!"
  end

  display_balance(PLAYER[:balance])

  if PLAYER[:balance] < 10
    puts "You're broke! Go home!!"
    break
  end

  puts "Do you want to carry on? [y/n]"
  answer = gets.chomp
  break if answer =~ /^no?$/i
end












