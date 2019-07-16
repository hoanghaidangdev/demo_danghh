module Teachers
  class QuestionsController < ApplicationController
    before_action :find_question, only: [:edit, :update, :destroy]

    def index
      @questions = Question.all
    end

    def show
      @question = Question.find(params[:id])
    end

    def new
      @question = current_user.questions.new
      4.times {@question.answers.build}
    end

    def create
      @question = current_user.questions.new question_params
      if @question.save
        redirect_to teachers_questions_path
      else
        render :new
      end
    end

    def edit ; end

    def update
      if @question.update_attributes question_params
        redirect_to teachers_questions_path
      else
        render :edit
      end
    end

    def destroy
      @question.destroy
      redirect_to teachers_questions_path
    end

    private
    def question_params
      params.require(:question).permit(:subject_id, :content, :file,
        answers_attributes: [:is_true, :option, :id])
    end

    def find_question
      @question = current_user.questions.find(params[:id])
    end
  end
end
