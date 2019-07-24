module Students
  class ExamsController < ApplicationController
    def index
      redirect_to root_path unless current_user.student?
      @exams = Exam.all
    end
  end
end
