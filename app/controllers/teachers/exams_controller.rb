module Teachers
  class ExamsController < ApplicationController
    before_action :find_exam, only: [:show, :edit, :update, :destroy]

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
      if @exam.save
        redirect_to teachers_exams_path
      else
        # @exam = Exam.new
        @questions = Question.all
        render :new
      end
    end

    def edit
      @questions = Question.all
    end

    def update
      if @exam.update_attributes(exam_params)
        redirect_to teachers_exams_path
      else
        @questions = Question.all
        find_exam
        render :edit
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
      @exam = params[:action] == "create" ? Exam.find(params[:id]) : current_user.exams.find(params[:id])
    end
  end
end
