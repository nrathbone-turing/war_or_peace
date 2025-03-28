require 'rspec'
require './lib/card'

# double check that you are in your war_or_peace project directory!
# pry(main)> require './lib/card'
#=> true

require './lib/deck'

# pry(main)> require './lib/deck'
#=> true

RSpec.describe Deck do
  it "exists" do
    deck = Deck.new[cards]
    
    expect(deck).to be_an_instance_of(Deck)
  end

  it "has readable attributes" do
    deck = Deck.new[cards]

    expect(deck.card1).to eq(:diamond, 'Queen', 12)
    # pry(main)> card1 = Card.new(:diamond, 'Queen', 12)
    # => 



  end

end

pry(main)> require './lib/card'
#=> true

pry(main)> require './lib/deck'
#=> true

pry(main)> card1 = Card.new(:diamond, 'Queen', 12)
#=> #<Card:0x007fbfd18490e8...>

pry(main)> card2 = Card.new(:spade, '3', 3)    
#=> #<Card:0x007fbfd19f4fa0...>

pry(main)> card3 = Card.new(:heart, 'Ace', 14)    
#=> #<Card:0x007fbfd18555a0...>

pry(main)> cards = [card1, card2, card3]

pry(main)> deck = Deck.new(cards)
#=> #<Deck:0x007fbfd2984808 @cards=[#<Card:0x007fbfd18490e8...>, #<Card:0x007fbfd19f4fa0...>, #<Card:0x007fbfd18555a0...>]>

pry(main)> deck.cards
#=> [#<Card:0x007fbfd18490e8...>, #<Card:0x007fbfd19f4fa0...>, #<Card:0x007fbfd18555a0...>]

pry(main)> deck.rank_of_card_at(0)
#=> 12

pry(main)> deck.rank_of_card_at(2)
#=> 14

pry(main)> deck.cards
#=> [#<Card:0x007fbfd18490e8...>, #<Card:0x007fbfd19f4fa0...>, #<Card:0x007fbfd18555a0...>]

pry(main)> deck.high_ranking_cards
#=> [#<Card:0x007fbfd18490e8...>, #<Card:0x007fbfd18555a0...>]

pry(main)> deck.percent_high_ranking
#=> 66.67

pry(main)> deck.remove_card
#=> #<Card:0x007fbfd18490e8 @rank=12, @suit=:diamond, @value="Queen">

pry(main)> deck.cards
#=> [#<Card:0x007fbfd19f4fa0...>, #<Card:0x007fbfd18555a0...>]

pry(main)> deck.high_ranking_cards
#=> [#<Card:0x007fbfd18555a0...>]

pry(main)> deck.percent_high_ranking
#=> 50.0

pry(main)> card4 = Card.new(:club, '5', 5)
#=> #<Card:0x007fbfd2963978 @rank=5, @suit=:club, @value="5">

pry(main)> deck.add_card(card4)

pry(main)> deck.cards
#=> [#<Card:0x007fbfd19f4fa0...>, #<Card:0x007fbfd18555a0...>, #<Card:0x007fbfd2963978...>]

pry(main)> deck.high_ranking_cards
#=> [#<Card:0x007fbfd18555a0...>]

pry(main)> deck.percent_high_ranking
#=> 33.33