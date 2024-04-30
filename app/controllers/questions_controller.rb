class QuestionsController < ApplicationController
  def ask
    # juste for the space
  end

  def answer
    @question = params[:question]
    if @question.present?
      @answer = if @question == 'I am going to work'
                  'Great!'
                elsif @question.ends_with?('?')
                  'Silly question, get dressed and go to work!'
                else
                  "I don't care, get dressed and go to work!"
                end
    else
      @answer = 'Please provide a question.'
    end
  end
end
