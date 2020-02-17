class QuestionsController < ApplicationController
  def ask
    # @questions = ['how?']

    if params[:question]
      @questions = @questions.select { |question| question.starts_with?(params[:question]) }
    end
  end

  def answer
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question].include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
