class QuizzesController < ApplicationController

  def new
    @quiz = Quiz.new
  end

  def create
    # render text: params
    @quiz = Quiz.new quiz_params
    if @quiz.save
      redirect_to @quiz
    else
      render :new
    end
  end

  def show
    @quiz = Quiz.find(params[:id])
  end


  def index
    @quizzes = Quiz.all
  end



  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])

    if @quiz.update(quiz_params)
      redirect_to quizzes_path
    else 
      render :edit
    end
  end

  def destroy
    @quiz = Quiz.find (params[:id])
    @quiz.destroy
    redirect_to quizzes_path

  end


  private
  def quiz_params 
    params.require(:quiz).permit(:title, :body, :level)
  end


end
