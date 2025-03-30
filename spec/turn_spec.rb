require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

RSpec.describe Turn do

  before(:each) do

    @card1 = Card.new(:diamond, 'Queen', 12)
    @card2 = Card.new(:spade, '3', 3)
    @card3 = Card.new(:heart, 'Ace', 14)
    @card4 = Card.new(:diamond, 'Jack', 11)
    @card5 = Card.new(:heart, '8', 8) 
    @card6 = Card.new(:diamond, 'Queen', 12)
    @card7 = Card.new(:heart, '3', 3)
    @card8 = Card.new(:diamond, '2', 2)

    @deck1 = Deck.new([card1, card2, card5, card8])
    @deck2 = Deck.new([card3, card4, card6, card7])
    
    @player1 = Player.new("Megan", @deck1)
    @player2 = Player.new("Aurora", @deck2)

  end

  # test to see if player1 and player2 exist
  if "player1 exists" do
    expect(@player1).to be_an_instance_of(Player)
  end

  if "player2 exists" do
    expect(@player2).to be_an_instance_of(Player)
  end

  












end