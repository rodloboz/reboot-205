# welcome user
# START LOOP
# ask user for first number => puts
# store the first number => INTEGER
# ask user for second number => puts
# store second number => INTEGER
# ask user for operation (+ - / *)
# store operator => STRING
# calculate operation
# of first and second number => CASE
# show the result => INTEGER
# END LOOP


require_relative "calculator"

def welcome
  puts "Hello, welcome to SimpleCalculator!"
  puts "\n\n\n"
end

def ask_for_number(ordinal)
  puts "Type #{ordinal} number:"
  print "> "
end

def ask_for_operator
  puts "Type operator [+][-][/][*]"
  print "> "
end

welcome
answer = nil
until answer =~ /^no?$/i
# loop do
  ask_for_number(:first)
  first_number = gets.chomp.to_i
  ask_for_number(:second)
  second_number = gets.chomp.to_i
  ask_for_operator
  operator = gets.chomp
  result = calculate(first_number, second_number, operator)
  puts "Result: #{result}"
  puts "Do you want to do another calculation? [y/n]"
  answer = gets.chomp
  # break if answer == "n"
end



