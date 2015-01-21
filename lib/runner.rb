require './lib/mastermind'
require './lib/mastermind_responses'
require 'pry'

class Game

  attr_reader :mastermind, :response

  def initialize
  @mastermind = Mastermind.new
  @response = Responses.new
  @guess_count = 0
  end

  def start
    new_game = @mastermind
    
  end

end
