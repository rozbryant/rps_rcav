require "uri"

class RockController < ApplicationController

  def user_plays_rock

    moves = ["rock", "paper", "scissors"]

    @computer_move = moves.sample

    uri = URI("http://localhost:3000/rock")
    path = uri.path
    path_as_move = path.delete("/")

    @user_move = path_as_move

    if @user_move == @computer_move
      puts "You're tied!!"
    elsif @user_move == "rock" && @computer_move == "paper"
      puts "You lose!!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      puts "You win!!"
    end

    render("/play_rock.html.erb")
  end
end
