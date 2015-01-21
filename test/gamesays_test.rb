require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/gamesays'

class GameSaysTest < Minitest::Test

  def test_it_exists
    hello = GameSays.new
    assert hello.welcome.include?("Welcome to MASTERMIND")
  end
end
