module Students
  module LogExamsHelper
    def approved_log_exam exam
      current_user.log_exams.find_by exam: exam, status: :approved
    end
  end
end
