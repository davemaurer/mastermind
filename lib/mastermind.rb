class Mastermind

  attr_accessor :key, :input, :color_counter, :place_counter

  def initialize
    @key = generate_key
    @input = ""
    @color_counter = 0
    @place_counter = 0
  end

  def valid_colors
    ["r", "g", "b", "y"]
  end

  def generate_key
    (valid_colors * 4).shuffle.sample(4).join
  end

  def winner?
    @input == @key
  end

  def eval_color
    uniq_key = @key.chars.uniq
    uniq_input = @input.chars.uniq
    uniq_key.each do |ele|
      if uniq_input.include?(ele)
        @color_counter += 1
      end
    end
  end

  def eval_place
    @key.each_with_index do ||
      #or you can create an index [0123] then use each do num
    #where num is the element in each array if == to
    if @key[0] == @input[0]
      @place_counter += 1
    end
    if @key[1] == @input[1]
      @place_counter +=1
    end
    if @key[2] == @input[2]
      @place_counter +=1
    end
    if @key[3] == @input[3]
      @place_counter +=1
    end
  end

  def invalid_color #refactor?
    @input.chars.each do |ele|
      if valid_colors.include?(ele)
        return true
      else
        return false
      end
    end
  end

  def invalid_length
    @input.size == 4
  end

  # def execute(input)
  #   secret = "BBGB"
  #   if input == secret
  #     "You win!"
  #   else
  #     "Guess again!"
  #   end
  # end
end
