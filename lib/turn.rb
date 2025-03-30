class Turn

  attr_reader :player1, :player2, :spoils_of_war

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
    @type = type
  end

  def type
    if @player1.deck.rank_of_card_at(0) != @player2.deck.rank_of_card_at(0)
      :basic
    elsif @player1.deck.rank_of_card_at(0) = @player2.deck.rank_of_card_at(0)
      :war
    elsif @player1.deck.rank_of_card_at(0) = @player2.deck.rank_of_card_at(0) && @player1.deck.rank_of_card_at(2) = @player2.deck.rank_of_card_at(2)
      :mutually_assured_destruction
    end
  end

  def winner
    # if the turn has a type of :basic, it will return whichever player has a higher rank_of_card_at(0)
    if @turn.type == :basic
      if @player1.deck.rank_of_card_at(0) > @player2.deck.rank_of_card_at(0)
        return @player1.name
      else
        return @player2.name
      end
    # if the turn has a type of :war the winner will be whichever player has a higher rank_of_card_at(2)
    elsif @turn.type == :war
      if @player1.deck.rank_of_card_at(2) > @player2.deck.rank_of_card_at(2)
        return @player1.name
      else
        return @player2.name
      end
    # if the turn has a type of :mutually_assured_destruction the method will return No Winner
    elsif @turn.type == :mutually_assured_destruction
      return "No Winner"
    end
  end

  def pile_cards
    if 
  end

  def award_spoils(@winner)

  end

end


