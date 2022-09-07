class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
      if @question.downcase == "i am going to work right now!"
        @answer_coach = ""
      elsif @question.end_with?("?")
        @answer_coach = "Silly question, get dressed and go to work!"
      else
        @answer_coach = "I don't care, get dressed and go to work!"
      end
  end
end
