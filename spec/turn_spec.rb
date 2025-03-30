require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

#require 'pry'; binding.pry
RSpec.describe Turn do

  before(:each) do

    @card1 = Card.new(:heart, 'Jack', 11)
    @card2 = Card.new(:heart, '10', 10)
    @card3 = Card.new(:heart, '9', 9)
    @card4 = Card.new(:diamond, 'Jack', 11)
    @card5 = Card.new(:heart, '8', 8) 
    @card6 = Card.new(:diamond, 'Queen', 12)
    @card7 = Card.new(:heart, '3', 3)
    @card8 = Card.new(:diamond, '2', 2)

    @deck1 = Deck.new([@card1, @card2, @card5, @card8])
    @deck2 = Deck.new([@card3, @card4, @card6, @card7])
    
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
    expect(@turn.player1).to eq(@player1)
    #pry(main)> @turn.player1
    #=> #<Player:0x007fa3edae29d0 @deck=#<Deck:0x007fa3eda472c8...>, @name="Megan">, #<Deck:0x007fa3eda472c8
        #@cards=[#<Card:0x007fa3edaa0df0...>, #<Card:0x007fa3eda519a8...>,
        #<Card:0x007fa3edb263d8...>, #<Card:0x007fa3eda89308...>]>
  end

  it "turn exists for player2" do
    expect(@turn.player2).to eq(@player2)
    #pry(main)> @turn.player2
    #=> #[<Player:0x007fa3ed9e6568 @deck=#<Deck:0x007fa3ee11ee48...>, @name="Aurora">, <Deck:0x007fa3ee11ee48 
    #@cards=[#<Card:0x007fa3ed98d9b8...>, #<Card:0x007fa3ee14ef80...>,
    #<Card:0x007fa3eda3e1f0...>, #<Card:0x007fa3edad1cc0...>]>])
  end

  # test logic for :basic turn
  describe "basic turn logic" do
    
    it "has basic turn type" do
      expect(@turn.type).to eq(:basic)
      #pry(main)> @turn.type
      #=> :basic
    end
  
    # test to make sure @spoils_of_war is empty
    it "spoils_of_war is empty" do
      expect(@turn.spoils_of_war).to eq([])
      #pry(main)> spoils_of_war
      # => []
    end

    # test to make sure Megan is the winner
    it "winner is Megan" do
      expect(@turn.winner).to eq(@player1)
      #pry(main)> @turn.winner = @player1
      #=> #<Player:0x007fa3edae29d0 @deck=#<Deck:0x007fa3eda472c8...>, @name="Megan">
    end

    # test to make sure that the pile_cards array contains the top card from each player's deck
    it "each player sends top card of deck to pile_cards" do
      @turn.pile_cards
      #pry(main)> @turn.pile_cards
    end
    
    # test to ake sure that the spoils_of_war array contains all of the cards from pile_cards
    it "spoils_of_war arary contains all of the cards from pile_cards" do
      @turn.pile_cards
      expect(@turn.spoils_of_war).to eq([@card1, @card3])
      #pry(main)> @spoils_of_war
      #=> [#<Card:0x007fa3edaa0df0 @rank=11, @suit=:heart, @value="Jack">, #<Card:0x007fa3ed98d9b8 @rank=9, @suit=:heart, @value="9">]
    end
    
    # test that the award_spoils method correctly adds the cards in that array to the winner's deck
    it "update both players decks after spoils awarded" do
      @turn.pile_cards
      @turn.award_spoils(@turn.winner)
      #pry(main)> @turn.award_spoils(winner)

      expect(@player1.deck.cards).to eq([@card2, @card5, @card8, @card1, @card3])
      #pry(main)> @player1.deck
      #=> #<Deck:0x007fa3eda472c8 @cards=[#<Card:0x007fa3eda519a8...>, #<Card:0x007fa3edb263d8...>, #<Card:0x007fa3eda89308...>, #<Card:0x007fa3edaa0df0...>, #<Card:0x007fa3ed98d9b8...>]>
      
      expect(@player2.deck.cards).to eq([@card4, @card6, @card7])
      #pry(main)> @player2.deck
      #=> #<Deck:0x007fa3ee11ee48 @cards=[#<Card:0x007fa3ee14ef80...>, #<Card:0x007fa3eda3e1f0...>, #<Card:0x007fa3edad1cc0...>]>
    end
  
  end

  # # test logic for :war turn
  # describe ":war turn type" do
  #   expect(@turn.type).to eq(:war)
  #   #pry(main)> @turn.type
  #   #=> :war
  
  #   # test to make sure @spoils_of_war is not empty
  #   it "spoils_of_war is empty" do
  #     expect(@turn.spoils_of_war).to eq([])
  #     #pry(main)> @turn.spoils_of_war
  #     # => [blah blah]
  #   end
  
    
  
  
  
  
  
  
  # end

  
  
  
  # # test logic for :mutually_assured_destruction turn
  # describe ":mutually_assured_destruction turn type" do
  #   expect(@turn.type).to eq(:mutually_assured_destruction)
  #   #pry(main)> @turn.type
  #   #=> :mutually_assured_destruction
  
  #   # test to make sure @spoils_of_war is empty
  #   it "spoils_of_war is empty" do
  #     expect(@turn.spoils_of_war).to eq([])
  #     #pry(main)> @turn.spoils_of_war
  #     # => []
  #   end
  
  
  
  
  
  
  
  
  
  
  # end










end