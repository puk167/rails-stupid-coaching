class QuestionsController < ApplicationController
  # ANSWERS = {a: "Great!", b: "Silly question, get dressed and go to work!", c: "I don't care, get dressed and go to work!"}
  ANSWERS = {
    1 => {name: "Great!"},
    2 => {name: "Silly question, get dressed and go to work!"},
    3 => {name: "I don't care, get dressed and go to work!"}
  }
  def ask
    @ask = "Ask a question"
  end

  def answer
    @question = params[:text]
    if @question == "I am going to work"
      @answer = ANSWERS[1][:name]
    elsif @question.split('').last == "?"
      @answer = ANSWERS[2][:name]
    else
      @answer = ANSWERS[3][:name]
    end
  end
end
