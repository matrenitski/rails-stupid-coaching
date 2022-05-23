# Controller for questions
class QuestionsController < ApplicationController
  @questions = []

  def ask
    @question = ''
  end

  def answer
    @question = params[:question]

    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'What time is it?'
      @answer = Time.now
    else
      @answer = ''
    end

    @questions = [] if @questions.nil?
    @questions << { question: @question, answer: @answer }
    puts @questions
  end
end
