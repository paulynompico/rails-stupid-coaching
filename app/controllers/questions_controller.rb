class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @response = ""
    @my_question = params[:question]
    if @my_question.include? "?"
      @response = "Silly question, get dressed and go to work"
    elsif @my_question == "I am going to work"
      @response = "Great!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
