class RockPaperScissorsController < ApplicationController
  def new
    @rsp_array = ["Rock", "Paper", "Scissors"]
  end

  def show

    results = { "Rock": {"Rock":"tie", "Scissors":"win", "Paper": "lose"},
          "Paper": {"Rock":"tie", "Scissors":"win", "Paper": "lose"},
          "Scissors": {"Rock":"tie", "Scissors":"win", "Paper": "lose"}
  }
    # @rsp_array = [""Rock, "Paper", ""Scissors""]
    @p = params
    @guess = params[:format]
    @throw = ["Rock", "Paper", "Scissors"].sample

    @result = results[@guess.to_sym][@throw.to_sym]

  end
end
