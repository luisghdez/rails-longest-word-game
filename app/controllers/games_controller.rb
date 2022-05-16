class GamesController < ApplicationController
  def new
    @letters = 10.times.map { ('A'..'Z').to_a[rand(26)] }
  end

  def score
    @letters = params[:letters].upcase.split('')
    @guess = params[:guess]
  end
end
