def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  randed = rand 1..11
  return randed
end

def display_card_total(num)
  card_total = num
  puts "Your cards add up to #{card_total}"
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  card_total = num
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 first_card = deal_card
 second_card = deal_card
 sum_of_deal = first_card + second_card
 display_card_total(sum_of_deal)
 return sum_of_deal
end

def hit?(num)
  prompt_user
  input = get_user_input
    if input == 's'
      return num.to_i
    elsif
       input == 'h'
       new_card = deal_card.to_i
       sum = num + new_card
      return sum
       prompt_user
    else 
       invalid_command
       hit?(num)
   end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
   welcome
   total = initial_round
   until total > 21 do 
     total = hit?(total)
     display_card_total(total)
   end
 end_game(total)
end
    
