module Students
  class LogExamsController < ApplicationController
    def index
      @log_exams = current_user.log_exams.submitted
    end

    def show
      @log_exam = current_user.log_exams.find params[:id]
      @exam = @log_exam.exam
    end

    def create
      @exam = Exam.find params[:exam_id]
      log_exam = LogExam.create!(name: @exam.name, status: :requested,
        teacher_id: @exam.user.id, user: current_user, exam: @exam)
      current_user.log_exams.push log_exam
      current_user.save
      redirect_to students_exams_path
    end

    def edit
      @log_exam = current_user.log_exams.find params[:id]
      unless @log_exam.approved?
        redirect_to students_exams_path
      end
      @exam = @log_exam.exam
      @log_exam.update_attributes! status: :doing
    end

    def update
      log_exam = LogExam.find params[:log_exam][:log_exam_id]
      log_exam.update_attributes log_exam_params
      exam = Exam.find log_exam.exam_id
      log_exam.update_score
      log_exam.update_attributes! status: :submitted
      redirect_to students_log_exam_path log_exam
    end

    private
    def log_exam_params
      params.require(:log_exam).permit(log_questions_attributes:
        [:subject_name, :content, log_answers_attributes: [:is_true, :option]])
    end
  end
end
