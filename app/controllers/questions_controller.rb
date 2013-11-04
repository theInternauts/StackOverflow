class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def create
    if signed_in?
      @question = Question.new(params[:question])
      if @question.save
        redirect_to @question
      else
        render "new"
      end
    else
      redirect_to sign_in_path
    end
  end

  def new
    if signed_in?
      @question = Question.new
    else
      redirect_to sign_in_path
    end
  end

  def show
    @question = Question.find(params[:id])
  end

end