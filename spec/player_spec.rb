require 'rspec'
require './lib/card'
#pry(main)> require './lib/card'
#=> true

require './lib/deck'
#pry(main)> require './lib/deck'
#=> true

require './lib/player'
#pry(main)> require './lib/player'
#=> true

RSpec describe Player do

  before(:each) do
    @card1 = Card.new(:diamond, 'Queen', 12)
    # pry(main)> card1 = Card.new(:diamond, 'Queen', 12) 
    # => #<Card:0x00000001073caea8 @rank=12, @suit=:diamond, @value="Queen">

    @card2 = Card.new(:spade, '3', 3)
    # pry(main)> card2 = Card.new(:spade, '3', 3)
    # => #<Card:0x00000001077cf030 @rank=3, @suit=:spade, @value="3">

    @card3 = Card.new(:heart, 'Ace', 14)
    # pry(main)> Card.new(:heart, 'Ace', 14)
    # => #<Card:0x00000001071d06c0 @rank=14, @suit=:heart, @value="Ace">
        
    @cards = [@card1, @card2, @card3]
    # pry(main)> cards = [card1, card2, card3]
    # =>[#<Card:0x00000001073caea8 @rank=12, @suit=:diamond, @value="Queen">,
        #<Card:0x00000001077cf030 @rank=3, @suit=:spade, @value="3">,
        #<Card:0x00000001071d06c0 @rank=14, @suit=:heart, @value="Ace">]

    @deck = Deck.new(@cards)
    # pry(main)> deck = Deck.new(cards)
    # => #<Deck:0x0000000108ff0010
          #@cards=
            #[#<Card:0x0000000107f65a38 @rank=12, @suit=:diamond, @value="Queen">,
            #<Card:0x00000001089e0490 @rank=3, @suit=:spade, @value="3">,
            #<Card:0x0000000108fd9d60 @rank=14, @suit=:heart, @value="Ace">]>


          
          
  end

  it "exists" do
    expect(@player).to be_an_instance_of(Player)

    expect(Player.new).to eq(["Clarisa,"])
    pry(main)> @player = Player.new('Clarisa', deck)
    #=> #<Player:0x007f9cc3b4c988 @deck=#<Deck:0x007f9cc396bdf8 @cards=[#<Card:0x007f9cc3a73a98...>, #<Card:0x007f9cc3a03720...>, #<Card:0x007f9cc3a44c98...>]>, @name="Clarisa">
  end











end











pry(main)> player = Player.new('Clarisa', deck)


pry(main)> player.name
#=> "Clarisa"

pry(main)> player.deck
#=> #<Deck:0x007f9cc396bdf8 @cards=[#<Card:0x007f9cc3a73a98...>, #<Card:0x007f9cc3a03720...>, #<Card:0x007f9cc3a44c98...>]>

pry(main)> player.has_lost?
#=> false

pry(main)> player.deck.remove_card
#=> #<Card:0x007f9cc3a73a98 @rank=12, @suit=:diamond, @value="Queen">

pry(main)> player.has_lost?
#=> false

pry(main)> player.deck.remove_card
#=> #<Card:0x007f9cc3a03720 @rank=3, @suit=:spade, @value="3">

pry(main)> player.has_lost?
#=> false

pry(main)> player.deck.remove_card
#=> #<Card:0x007f9cc3a44c98 @rank=14, @suit=:heart, @value="Ace">

pry(main)> player.has_lost?
#=> true

pry(main)> player.deck
#=> #<Deck:0x007f9cc396bdf8 @cards=[]>