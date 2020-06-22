def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  number = rand(1..11)
  puts number
  number
end

def display_card_total(sum)
  # code #display_card_total here
  puts "Your cards add up to #{sum}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card1)
  card1 + card2
end

def hit?(card_total)
  # code hit? here
  prompt_user
  response = get_user_input
  if response == "s"
    return card_total
  elsif response == "h"
    new_card = deal_card
    return card_total  + new_card
  else
    invalid_command
    prompt_user
    get_user_input
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  sum = initial_round
  until sum > 21 do
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
    
