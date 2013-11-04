class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(params[:answer])
    if @answer.save
      redirect_to @question
    else
      p "*" * 50
      p "comment creation failed"
    end
  end

end