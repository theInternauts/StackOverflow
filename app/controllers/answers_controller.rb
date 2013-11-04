class AnswersController < ApplicationController
  def create
    if signed_in?
      @question = Question.find(params[:question_id])
      @answer = @question.answers.new(params[:answer])
      if @answer.save
        redirect_to @question
      else
        p "*" * 50
        p "comment creation failed"
      end
    else
      redirect_to sign_in_path
    end
  end

  def destroy
    redirect_to '/'
  end
end