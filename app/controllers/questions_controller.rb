class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
    redirect_to action: :index
  end

  private
  def question_params
    params.require(:question).permit(:title, :question, :name)
  end
end