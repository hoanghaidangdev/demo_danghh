module Students
  class LogExamsController < ApplicationController
    before_action :find_log_exam, only: [:show, :edit, :update]

    def index
      @log_exams = current_user.log_exams.submitted
    end

    def show
      @exam = @log_exam.exam
    end

    def create
      @exam = Exam.find params[:exam_id]
      log_exam = LogExam.create!(status: :requested, teacher_id: @exam.user.id,
        user: current_user, exam: @exam)
      redirect_to students_exams_path
    end

    def edit
      @log_exam = current_user.log_exams.find params[:id]
      redirect_to students_exams_path unless @log_exam.approved?
      @exam = @log_exam.exam
      @log_exam.update_attributes! status: :doing
    end

    def update
      LogExam.transaction do
        @log_exam.update_attributes! log_exam_params
        @log_exam.update_attributes! status: :submitted
      end
      redirect_to students_log_exam_path @log_exam
    end

    private
    def log_exam_params
      params.require(:log_exam).permit(log_questions_attributes:
        [:question_id, log_answers_attributes: [:answer_id]])
    end

    def find_log_exam
      @log_exam = LogExam.find params[:id]
    end

    def check_permission
      case params[:action]
      when "index"
        redirect_to root_path if cannot? :read, LogExam
      when "show", "edit", "update"
        redirect_to root_path if @log_exam.user != current_user
      end
    end
  end
end
