require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/game'

require 'pry'; binding.pry
Rspec.describe Game do

  before(:each) do
    @game = Game.new
  end

  #test to see if the game exists
  it exists do
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

  # describe "create_players and deck setup logic" do



  # end

  # describe "play_game starts the gameplay as expected" do




  # end


end