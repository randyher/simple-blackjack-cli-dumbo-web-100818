def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1...11)
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
  return card_total
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer=gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card=deal_card
  second_card=deal_card
  card_total=first_card+second_card
  display_card_total(card_total)
  card_total
end

def hit? (total)
  prompt_user
  response=get_user_input
  while response!="h" && response!="s"
  invalid_command
  prompt_user 
  response=get_user_input
  end
   if response=="h"
  new_card=deal_card
  total+=new_card
  elsif response=="s"
  total
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
output=initial_round
new_draw=0
until output>21
new_draw=hit?(0)
output=output+new_draw
display_card_total(output)
end
end_game(output)
end