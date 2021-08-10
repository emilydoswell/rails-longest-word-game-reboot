class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.shuffle[0...10].join.upcase
  end

  def score
    @guess = params[:word]
  end
end
