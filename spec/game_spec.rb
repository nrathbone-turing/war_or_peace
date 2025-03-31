require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/game'

#require 'pry'; binding.pry
RSpec.describe Game do

  before(:each) do
    @game = Game.new
  end

  #test to see if the game exists
  it "exists" do
    expect(@game).to be_an_instance_of(Game)
    
    # and sets the instance variables to false
    expect(@game.has_started).to eq(false)
    expect(@game.game_over).to eq(false)
  end

  # test the start method make sure the welcome message in the console
  # don't have to test this for the project based on the rubric,
  # but I wanted to at least include it in the interaction patterns 
  # describe "start method logic" do
  #   it "prints welcome message in terminal" do
  #     expect { game.start }.to output(/Welcome to War!/).to_stdout

  #     # also test to make sure the user input logic is working
  #     # expect() something
  #   end

  #   # test when input is 'GO', calls setup_game and sets @has_started = true
  #   it "start game with user input and creates players, decks, and cards" do
  #     #expect()
  #     expect(@game.has_started).to eq(true)
  #   end
  #   # test to make sure invalid input message displays if user input is not 'GO'
  #   it "returns invalid input string" do
  #     #expect() something to output "Invalid input. Type 'HELP' for more options."
  #   end


  #   # test to make sure the game setup has returned correctly
  #   it "does" do

  #   end

  # end

  describe "create_players and deck setup logic" do

    it "runs setup_game and creates players and sets has_started to true" do
      @game.setup_game
    
      expect(@game.has_started).to be true
      # test that both players are created correctly as instances of the Player class
      expect(@game.player1).to be_an_instance_of(Player)
      expect(@game.player2).to be_an_instance_of(Player)

      # test that both players' decks are correctly created as instances of the Deck class
      # and each deck's number of cards is 26, split evenly between the total 52 cards
      expect(@game.player1.deck).to be_an_instance_of(Deck)
      expect(@game.player1.deck.cards.length).to eq(26)
      expect(@game.player2.deck).to be_an_instance_of(Deck)
      expect(@game.player2.deck.cards.length).to eq(26)
    end
    

  end

  # describe "play_game starts the gameplay as expected" do

  # end


end