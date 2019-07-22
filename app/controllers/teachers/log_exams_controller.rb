module Teachers
  class LogExamsController < ApplicationController

    def update
      log_exam = LogExam.find params[:id]
      log_exam.update_attributes! status: :approved
      redirect_to teachers_exams_path
    end

    def destroy
      log_exam = LogExam.find params[:id]
      log_exam.destroy
      redirect_to teachers_exams_path
    end
  end
end
