class AnswersController < ApplicationController
  def create
    if signed_in?
      @question = Question.find(params[:question_id])
      @answer = @question.answers.new(params[:answer])
      @answer.user_id = current_user.id
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
end