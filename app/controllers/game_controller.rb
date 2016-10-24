class GameController < ApplicationController
  def user_plays_rock
    render("/game.html.erb")
  end

  def user_plays_paper
    render("/game.html.erb")
  end

  def user_plays_scissors
    render("/game.html.erb")
  end
end

  #   moves = ["rock", "paper", "scissors"]
  #
  #   @user_plays_rock = [:params]
  #   @computer_move = moves.sample
  #
  #   if @computer_move == @user_plays_rock
  #     puts "You're tied!"
  #   elsif @user_plays_rock && @computer_move == "paper"
  #     puts "You lose!"
  #   elsif @user_plays_rock && @computer_move == "scissors"
  #     puts "You win!!"
  #   end
  #
  # end
