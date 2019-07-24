module Teachers
  class LogExamsController < ApplicationController
    before_action :find_log_exam, only: [:show, :update, :destroy]
    before_action :check_permission

    def index
      @log_exams = LogExam.own_submitted_log_exams current_user.id
    end

    def show
      @exam = @log_exam.exam
    end

    def update
      @log_exam.update_attributes! status: :approved
      redirect_to teachers_exams_path
    end

    def destroy
      @log_exam.destroy
      redirect_to teachers_exams_path
    end

    private
    def find_log_exam
      @log_exam = LogExam.find params[:id]
    end

    def check_permission
      case params[:action]
      when "index", "show"
        redirect_to root_path if cannot? :read, LogExam
      when "update", "destroy"
        redirect_to root_path if @log_exam.exam.user != current_user
      end
    end
  end
end
