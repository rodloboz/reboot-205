def display_horses
  HORSES.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end
end

def ask_for_horse
  puts "Please pick a horse: (between 1-#{HORSES.length})"
  print "> "
end

def find_horse(index)
  HORSES[index]
end

def randomize_winner
  HORSES.sample
  # HORSES.shuffle.first
end


