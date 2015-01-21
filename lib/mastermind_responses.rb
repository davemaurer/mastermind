class Responses

  def response_welcome
    "Welcome to MASTERMIND!!! I am going to make you cry."
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    >
  end

  def response_play
    "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def response_invalid
    "You are doing it wrong. You should give up."
  end

  def response_valid
    "#{@input} has #{@color_counter} of the correct elements with #{@place_counter} in the correct positions
    \nYou've taken #{@guess_count} guesses."
  end

  def response_win
    "Congratulations! You guessed the sequence  in 8 guesses over 4 minutes,
    22 seconds.
    Do you want to (p)lay again or (q)uit?""
end
