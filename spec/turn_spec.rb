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

    @turn = Turn.new(@player1, @player2)

  end

  # test to see if player1 and player2 exist
  it "player1 exists" do
    expect(@player1).to be_an_instance_of(Player)
    #pry(main)> player1 = Player.new("Megan", deck1)    
    #=> #<Player:0x007fa3edae29d0 @deck=#<Deck:0x007fa3eda472c8...>, @name="Megan">
  end

  it "player2 exists" do
    expect(@player2).to be_an_instance_of(Player)
    #pry(main)> @player2 = Player.new("Aurora", deck2)    
    #=> #<Player:0x007fa3ed9e6568 @deck=#<Deck:0x007fa3ee11ee48...>, @name="Aurora">
  end

  # test to see if deck 1 and deck 2 exist
  it "deck1 exists" do
    expect(@deck1).to be_an_instance_of(Deck)
    #pry(main)> @deck1 = Deck.new([card1, card2, card5, card8])    
    #=> #<Deck:0x007fa3eda472c8 @cards=[#<Card:0x007fa3edaa0df0...>, #<Card:0x007fa3eda519a8...>,
        #<Card:0x007fa3edb263d8...>, #<Card:0x007fa3eda89308...>]>
  end

  it "deck2 exists" do
    expect(@deck2).to be_an_instance_of(Deck)
    #pry(main)> @deck2 = Deck.new([card3, card4, card6, card7])    
    #=> #<Deck:0x007fa3ee11ee48 @cards=[#<Card:0x007fa3ed98d9b8...>, #<Card:0x007fa3ee14ef80...>,
        #<Card:0x007fa3eda3e1f0...>, #<Card:0x007fa3edad1cc0...>]>
  end

  # test to make sure a turn exists for each player
  it "turn exists for player1" do
    expect(@turn.player1).to eq([blah blah])
    #pry(main)> @turn.player1
    #=> #<Player:0x007fa3edae29d0 @deck=#<Deck:0x007fa3eda472c8...>, @name="Megan">
  end

  it "turn exists for player2" do
    expect(@turn.player1).to eq([blah blah])
    #pry(main)> @turn.player2
    #=> #<Player:0x007fa3ed9e6568 @deck=#<Deck:0x007fa3ee11ee48...>, @name="Aurora">
  end

  end

  # test logic for :basic turn
  it ":basic turn type" do
    expect(@turn.type).to eq(:basic)
    #pry(main)> @turn.type
    #=> :basic
  
    # test to make sure @spoils_of_war is empty
    it "spoils_of_war is empty" do
      expect(@turn.spoils_of_war).to eq([])
      #pry(main)> @turn.spoils_of_war
      # => []
    end
  
  
  
  
  
  
  
  end

  
  
  # test logic for :war turn
  it ":war turn type" do
    expect(@turn.type).to eq(:war)
    #pry(main)> @turn.type
    #=> :war
  
    # test to make sure @spoils_of_war is not empty
    it "spoils_of_war is empty" do
      expect(@turn.spoils_of_war).to eq([blah blah])
      #pry(main)> @turn.spoils_of_war
      # => [blah blah]
    end
  
  
  
  
  
  
  
  end

  
  
  
  # test logic for :mutually_assured_destruction turn
  it ":mutually_assured_destruction turn type" do
    expect(@turn.type).to eq(:mutually_assured_destruction)
    #pry(main)> @turn.type
    #=> :mutually_assured_destruction
  
    # test to make sure @spoils_of_war is empty
    it "spoils_of_war is empty" do
      expect(@turn.spoils_of_war).to eq([])
      #pry(main)> @turn.spoils_of_war
      # => []
    end
  
  
  
  
  
  
  
  
  
  
  end










end