class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @your_message = params[:question]
    if @your_message.downcase == "i am going to work!"
      @your_coach = "Great!"
    elsif @your_message.end_with?("?")
      @your_coach = "Silly question, get dressed and go to work!"
    elsif @your_message == @your_message.upcase
      @your_coach = "I can feel your motivation!"
    else
      @your_coach = "I don't care, get dressed and go to work!"
    end
  end
end
