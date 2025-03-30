class Game

  #attr_reader :deck_size, :create_decks

  # Create 52 Cards (A standard deck)
  # Put those card into two Decks (some randomness would be nice here!)
  # Create two players with the Decks you created
  # Start the game using a new method called start

  def initialize()
    @deck_size = 52
    @player_count = 2
    @has_started = false
    @game_over = false
  end

  def input
    @input == gets.chomp
  end

   # upon startup, print to console:
  def start
   
    puts "------------------------------------------------------------------"
    # welcome message with game title and other details
    puts "Welcome to War! (or Peace) This game will be played with 52 cards."
    # player introduction
    puts "The players today are Megan and Aurora."
    # command for user input to start playing
    puts "Type 'GO' to start the game!"
    puts "------------------------------------------------------------------"

    input.upcase

    if input == "GO" && @has_started == false
      # prompt user to input how many cards they want to begin with in each player's deck
      puts "Deck size = #{@deck_size}"
      # prompt user to input how many players will be playing
      puts "Player count = #{@player_count}"
      # create instances of cards, decks, players
      # start gameplay loop
      @has_started == true
      
    elsif input != "GO" && @has_started == false
      puts "Wait! You haven't started playing yet!"
      puts "Type 'GO' to start the game or 'HELP' for more options."
      input.upcase 
    else input != "GO" || @has_started == true
      puts "Invalid input. Type 'HELP' for more options."
      input.upcase
    end
  end




end





# notes for additional improvements and future refactors to increase complexity

# def help
#   if input == "HELP" && @has_started == true && @game_over = true
#     #EXIT, SCORE, RESTART, EDIT_CONFIG = @deck_size, @player_count
#   end

# end

# def deck_size
#   @deck_size = deck_size

#   @input
# end

# def player_count
#   @player_count = player_count
# end

# def create_decks
#   @create_decks = create_decks
# end

# def turn_count
#   @turn_count 
  
# end

# def is_draw?
#   @turn_count  >= 1000000 && 
#   @game_over = true
  
#   puts "---- DRAW ----"
# end

# def restart
#   @input == "RESTART"
# end

# # check for game state
# elsif @has_started == true && @player.has_lost == true
# puts "Maybe next time! Want to play again?"
# puts "Type 'GO' to start the game!"

# @input.upcase
