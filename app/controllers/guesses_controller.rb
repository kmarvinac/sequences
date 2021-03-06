class GuessesController < ApplicationController
  def index

    @num_1 = params["a1"].to_i
    @num_2 = params["a2"].to_i
    @num_3 = params["a3"].to_i

    if
      @num_1 < @num_2 && @num_2 < @num_3
      @outcome = "Yes!"
    else @outcome = "No."
    end

    g = Guess.new
    g.num_1 = params["a1"]
    g.num_2 = params["a2"]
    g.num_3 = params["a3"]
    g.outcome = @outcome
    g.save

    @list = Guess.all

    render("guesses/index.html.erb")

  end


  def answer
    @user_answer = params["q"]
    render("guesses/answer.html.erb")
  end

end
