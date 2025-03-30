require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/game'
require 'pry'; binding.pry

# Create 52 Cards (A standard deck)
# Put those card into two Decks (some randomness would be nice here!)
# Create two players with the Decks you created
# Start the game using a new method called start

game = Game.new
game.start

# hard-coded card variables - iteration 3

def create_entire_deck
  # define all the return values for each card attribute (suit, value, rank), local to this method
  all_suits = [:heart, :diamond, :spade, :club]
  all_values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
  all_ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
    # refactor note - since the aces are high and the first value is 2, i wonder if there's a way to do something like index position + 2

    # additional refactor note, I was initially looking into using the Range method for the array (https://ruby-doc.org/3.4.1/Range.html)
    # but couldn't quite figure it out here, but I imagine it would probably function similarly, where I just specify the starting
    # and ending index position based on the maximum array length which would be 13 so maybe like `all_values = (0..13).to_a`
    # but wasn't sure how to loop it from there

  # declare the starting value of the entire_deck as an empty array
  entire_deck = []

  # since there maximum length any attribute arrays, I should be able to just loop it 13 times per suit to create all 52 cards
  
  13.times do |index|
    # declare the value and rank variables as the element in the index position for each loop (like '2' and 2)
    value = all_values[index]
    rank  = all_ranks[index]

    # for each value/rank pair (like '2' and 2), make a card for every suit
    all_suits.each do |suit|
      card = Card.new(suit, value, rank)
      card_number = entire_deck.length + 1
      #just to check the return value for each card, making sure that all the cards are being created correctly based on their attributes
      puts "@card#{card_number} = [#{card.suit}, #{card.value}, #{card.rank}]"
      entire_deck.push(card)
    end
  end


end
