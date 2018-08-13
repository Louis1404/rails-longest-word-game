class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      @letters << ('A'..'Z').to_a.sample
    end
  @letters
  end


  def score
    @word = params[:word]
    @letters = params[:letters]
    @score = compute
  end

  def compute
# The word can't be built out of the original grid
# The word is valid according to the grid, but is not a valid English word
# The word is valid according to the grid and is an English word
  end

  def call_api(attempt)
    url = "https://wagon-dictionary.herokuapp.com/#{attempt}"
    user_serialized = URI.parse(url).open.read
    JSON.parse(user_serialized)
 end
end
