module Teachers
  module LogExamsHelper
    def exam_requested exam_id
      @log_exams = LogExam.where exam_id: exam_id, teacher_id: current_user.id, status: :requested
    end
  end
end
