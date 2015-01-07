class RockPaperScissorsController < ApplicationController
  def new
  	@throws = get_throws
  end  

  def show
  	@game_throw = get_throws[rand(3)]
  	@user_throw = get_throws[params[:id].to_i]
    game_result(@user_throw, @game_throw)
  end

  def get_throws
    ["Rock","Paper","Scissor"]
  end

  def game_result(user_throw, game_throw)
    beats = {"Rock" => "Scissor", "Scissor" => "Paper", "Paper" => "Rock"}

    if beats[user_throw] == game_throw
      @results = "You Win"
    elsif user_throw == game_throw
      @results = "You Tied"
    else
      @results = "You've Lost!"
    end
      
  end

end
