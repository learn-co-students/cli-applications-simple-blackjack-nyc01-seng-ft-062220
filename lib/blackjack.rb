def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  return card
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
  
end

def get_user_input
  # code #get_user_input here
  return gets.chomp 
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_1 = deal_card
  card_2 = deal_card
  sum = card_1 + card_2
  print display_card_total(sum)
  return card_1 + card_2
end

def hit?(total)
  # code hit? here
  prompt_user
  input = get_user_input

  if input == 'h'
    return total + deal_card
  elsif input == 's'
    return total
  else
    print(invalid_command)
    return hit?(total)
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
  welcome

  total = initial_round

  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
