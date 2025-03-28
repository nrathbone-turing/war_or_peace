class Deck

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(index)
    @cards[index].rank
  end

  def high_ranking_cards
    @cards.find_all { |card| card.rank >= 11 }
  end
  
  # def percent_high_ranking
  #   # not exactly sure on this one, will bring it up in slack
      # but i think we can probably use the high_ranking_cards.count array method from above
       # and then divide by the .count method on the entire .cards array 
       # and then multiply that by 100 to get the percentage
  # end
  
  def remove_card
    @cards.shift
  end

  def add_card(card)
    @cards.push(card)
  end
  

end