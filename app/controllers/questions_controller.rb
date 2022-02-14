class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = ''
    # @answer2 = 'Silly question, get dressed and go to work!'
    # @answer3 = "I don't care, get dressed and go to work!"

    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question'
    else
      @answer = 'I dont care'
    end
  end
end
