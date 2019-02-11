class QuestionsController < ApplicationController
  def ask
  end

  def answer
    answers = ['Great!', 'Get dress and go to work!', 'Silly question!', 'I don\'t care']
    @question = params[:question]
    if params[:question].include?('?')
      @answer = "#{answers[2]} #{answers[1]}"
    elsif params[:question] == 'I am going to work'
      @answer = answers[0]
    else
      @answer = "#{answers[3]} #{answers[1]}"
    end
  end
end
