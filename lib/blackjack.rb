def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total (num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  num = deal_card + deal_card

  p display_card_total (num)
  num
end

def invalid_command
  puts "Please enter a valid command"
end

def hit? (num)
  prompt_user
  input = get_user_input

  if input == "s"
    num
  elsif input == "h"
    num = num + deal_card
  else
    invalid_command
    hit? (num)
  end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round

    until num > 21 do
      num = hit? (num)
      display_card_total (num)
    end
  end_game (num)
end
    
