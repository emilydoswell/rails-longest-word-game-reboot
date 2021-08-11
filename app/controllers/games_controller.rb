class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.shuffle[0...10].join.upcase
  end

  def score
    @guess = params[:word]
    @letters = params[:word].split
  end

  def is_a_word?(word)
    dictionary_api = "https://wagon-dictionary.herokuapp.com/#{word}"
    word_checked = URI.open(dictionary_api).read
    json = JSON.parse(word_checked)
    json["found"]
    raise
  end
end
