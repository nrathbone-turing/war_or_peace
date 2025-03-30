class Game

  def initialize
    
  end

  def start
    # upon startup, print to console:
    puts "------------------------------------------------------------------"
    # welcome message with game title and other details
    puts "Welcome to War! (or Peace) This game will be played with 52 cards."
    # player introduction
    puts "The players today are Megan and Aurora."
    # command for user input to start playing
    puts "Type 'GO' to start the game!"
    puts "------------------------------------------------------------------"

    @input == gets.chomp.upcase
  end


end