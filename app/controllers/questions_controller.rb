class QuestionsController < ApplicationController
  

  def new
    # render text: params
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.new
  end


  def create
    # render text: params
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.new question_params
    if @question.save
      redirect_to quiz_questions_path
    else
      render :new
    end
  end

  def show
    @quiz = Quiz.find params[:quiz_id]
    @question = @quiz.questions.find(params[:id])
  end


  def index
    @quiz = Quiz.find params[:quiz_id]
    @questions = @quiz.questions.all
  end

  def edit
    @question = Question.find(params[:id])
    @quiz = @question.quiz 
  end

  def update
    # render text: params
    @question = Question.find(params[:id])
    if @question.update question_params
      redirect_to quiz_questions_path(@question.quiz)
    else :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @quiz = @question.quiz
    @question.destroy
    redirect_to quiz_questions_path(@quiz)
  end


  private
  def question_params 
    params.require(:question).permit(:title, :body, :quiz_id)
  end

end
