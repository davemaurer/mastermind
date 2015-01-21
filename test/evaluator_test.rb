require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/evaluator'

class EvaluatorTest < Minitest::Test

  def test_guess_evaluator_exists
    test = Evaluator.new
    assert eval_guess
  end

  def test_evaluate_guess
    guess = Evaluator.new

    guess = {"r"=>1, "g"=>1, "b"=>1, "y"=>1}
    assert_equal guess , Evaluator.eval_guess(["r", "g", "b", "y"])
    guess = {"r"=>4, "g"=>0, "b"=>0, "y"=>0}
    assert_equal guess["b"] , Evaluator.eval_guess(["r", "r", "r", "r"])["b"]
    assert_equal guess["g"] , Evaluator.eval_guess(["r", "r", "r", "r"])["g"]
    assert_equal guess["y"] , Evaluator.eval_guess(["r", "r", "r", "r"])["y"]
  end
end
