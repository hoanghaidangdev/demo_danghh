module Teachers
  class QuestionsController < ApplicationController
    before_action :find_question, only: [:show, :edit, :update, :destroy]
    before_action :check_permission

    def index
      @questions = Question.all
    end

    def show ; end

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
      @question = Question.find params[:id]
    end

    def check_permission
      case params[:action]
      when "index", "show"
        redirect_to root_path if cannot? :read, Question
      when "new", "create"
        redirect_to root_path if cannot? :create, Question
      when "edit", "update", "destroy"
        redirect_to root_path if @question.user != current_user
      end
    end
  end
end
