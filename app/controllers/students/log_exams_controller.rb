module Students
  class LogExamsController < ApplicationController
    def index
      @log_exams = current_user.log_exams.where(submitted: true)
    end

    def show
      @log_exam = current_user.log_exams.find(params[:id])
    end
  end
end
