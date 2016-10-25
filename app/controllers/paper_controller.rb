require "uri"

class PaperController < ApplicationController

  def user_plays_paper

    moves = ["rock", "paper", "scissors"]

    @computer_move = moves.sample

    uri = URI("http://localhost:3000/paper")
    path = uri.path
    path_as_move = path.delete("/")

    @user_move = path_as_move

    if @user_move == @computer_move
      puts "You're tied!!"
    elsif @user_move == "paper" && @computer_move == "rock"
      puts "You win!!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      puts "You lose!!"
    end

    render("/play_paper.html.erb")
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
