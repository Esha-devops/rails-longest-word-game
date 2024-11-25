class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    @word = params[:word]
    @letters = params[:letters]

    def word_from_grid
    if !word_from_grid?(@word, @letters)
      @result = "❌ Sorry, but '#{@word}' can't be built out of the original grid."
    else
      if valid_english_word?(@word)
        @result = "✅ Great job! '#{@word}' is a valid English word and scored #{@word.length} points."
      else
        @result = "❌ Sorry, but '#{@word}' is not a valid English word."
      end
  end
end
end
end
