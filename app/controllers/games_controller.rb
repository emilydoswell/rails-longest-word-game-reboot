class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.shuffle[0...10].join.upcase
  end

  def score
    @guess = params[:word]
    @letters = params[:word].split
  end

  def is_a_word
    url = "https://wagon-dictionary.herokuapp.com/#{@guess}"
    user_serialized = URI.open(url).read
    user = JSON.parse(user_serialized)
  end
end
