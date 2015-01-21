require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'
require 'pry'

class MastermindTest < Minitest::Test
  attr_reader :mastermind

  def setup
    @mastermind = Mastermind.new
  end

  def test_it_exists
    assert Mastermind
  end

  def test_it_creates_a_key
    mastermind.key
    assert mastermind.key
  end

  def test_it_compares_input_to_key
    mastermind.key = 'rgby'
    mastermind.input = 'rbyy'
    refute mastermind.winner?
  end

  def test_it_evals_color
    mastermind.key = 'rrrr'
    mastermind.input = 'rrbb'
    mastermind.eval_color
    assert_equal 1, mastermind.color_counter
  end

  def test_it_evals_place
    mastermind.key = 'rggr'
    mastermind.input = 'bgyr'
    mastermind.eval_place
    assert_equal 2, mastermind.place_counter
  end

  def test_it_invalidates_color
    mastermind.input = 'qwss'
    refute mastermind.invalid_color
  end



  #
  # def test_it_wins
  #   mm = Mastermind.new
  #   result = mm.execute("BBGB")
  #   assert result.downcase.include?("win")
  # end
  #
  # def t
  #
  # def test_it_prints_a_welcome_message
  # end
  #
  # def test_it_accepts_p_for_play
  # end
  #
  # def test_it_accepts_i_for_info
  # end
  #
  # def test_it_accepts_q_for_quit
  # end
  #
  # def test_it_takes_4_colors
  # end
  #
  # def test_it_can_take_random_colors
  # end
  #
  # def test_it_returns_number_of_right_colors
  # end
  #
  # def test_it_returns_number_of_right_matches
  # end
  #
  # def test_it_displays_number_of_guesses
  # end
  #
  # def test_it_displays_time_elapsed_after_win
  # end
end
