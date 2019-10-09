class AnswersController < ApplicationController
  
  def show
    @answer = Answer.find(params[:answer_id])
    @answer = Answer.new
  end
  
  def new
    @answer = Answer.all
  end

  def create 
    # binding.pry
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answers = @question.answers
    @answer.question = @question 

    if @answer.save
      redirect_to @question
    else
      render :'questions/show'
    end
  end
  
  private 

  def answer_params
    params.require("answer").permit(:description)
  end

end