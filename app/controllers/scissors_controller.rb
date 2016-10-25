require "uri"

class ScissorsController < ApplicationController

  def user_plays_scissors

    moves = ["rock", "paper", "scissors"]

    @computer_move = moves.sample

    uri = URI("http://localhost:3000/scissors")
    path = uri.path
    path_as_move = path.delete("/")

    @user_move = path_as_move

    render("/play_scissors.html.erb")
  end
end
