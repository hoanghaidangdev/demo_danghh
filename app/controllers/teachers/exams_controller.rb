module Teachers
  class ExamsController < ApplicationController
    before_action :find_exam, only: [:edit, :update, :destroy]
    before_action :find_exam_without_authenticate, only: :show

    def index
      @exams = Exam.all
    end

    def show ; end

    def new
      @exam = Exam.new
      @questions = Question.all
    end

    def create
      @exam = Exam.new exam_params
      @exam.user = current_user
      if @exam.questions.blank? || !@exam.save
        redirect_to new_teachers_exam_path
      else
        redirect_to teachers_exams_path
      end
    end

    def edit
      @questions = Question.all
    end

    def update
      if params[:exam][:question_ids] == [""] || !@exam.update_attributes(exam_params)
        redirect_to edit_teachers_exam_path
      else
        redirect_to teachers_exams_path
      end
    end

    def destroy
      @exam.destroy
      redirect_to teachers_exams_path
    end

    def search
      @exams = Question.find(params[:id]).exams
    end

    private
    def exam_params
      params.require(:exam).permit(:name, :time_for_exam, question_ids: [])
    end

    def find_exam
      @exam = current_user.exams.find(params[:id])
    end

    def find_exam_without_authenticate
      @exam = Exam.find(params[:id])
    end
  end
end
