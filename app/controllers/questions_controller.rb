class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:question]
    if @query == "I am going to work"
      @coach = "Great!"
    elsif @query.include? "?"
      @coach = "Silly question, get dressed and go to work!"
    else
      @coach = "I don't care, get dressed and go to work!"
    end
  end

end
