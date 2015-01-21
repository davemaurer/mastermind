require_relative 'mastermind'

class Evaluator

  def player_guess
    guess.split('')
  end

  def eval_guess
    player_guess.map
  end
end
