module Students
  class ExamsController < ApplicationController
    def index
      @exams = Exam.all
    end
  end
end
