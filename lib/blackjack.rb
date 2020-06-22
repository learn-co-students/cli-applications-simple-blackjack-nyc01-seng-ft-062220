def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1...11)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
  
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
  
  # code #end_game here
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  sum = card_one + card_two
  puts "Your cards add up to #{sum}"
  sum
end

def hit?(user_hand)
  prompt_user #user hits h or s
  user_input = get_user_input #receive user input
  
  if user_input != 'h' && user_input != 's'  #if they do not hit h or s, then notify of invalid command and start prompt again
    invalid_command
    prompt_user
    user_input = get_user_input
  end

  if user_input == 'h' #if user hits
    new_card = deal_card #set new card equal to deal card (random between 1 and 11)
    user_hand += new_card #add each new card to the existing total
  elsif user_input == 's' #if user stays
    user_hand #keep user hand (which is updated after each hit)
  end
  user_hand #return final hand
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome #prompt welcome
  user_hand = initial_round #set the user hand to the first round, handed 2 cards.
  card_total = user_hand #then set card_total to user hand

  until card_total >= 21 #until hits limit of 21
    card_total = hit?(card_total) #prompt h, s, or invalid
    display_card_total(card_total) #then display the total
  end
  end_game(card_total) #prompt end to game - you cannot win, so it will continue to stay or end.
end
    
