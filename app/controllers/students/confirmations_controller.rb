module Students
  class ConfirmationsController < ApplicationController

    def new
      @exam = Exam.find(params[:exam_id])
      flash[:info] = "Please check your email to get exam code"
      code = SecureRandom.urlsafe_base64
      log_exam = LogExam.create(code: code, name: @exam.name,
        teacher_id: @exam.user.id, user: current_user, exam_id: @exam.id)
      current_user.log_exams.push log_exam
      current_user.save
      ExamsMailer.send_code(current_user, code).deliver
    end

    def create
      log_exam = LogExam.find_by(code: params[:exam_code][:code])
      exam = Exam.find(log_exam.exam_id)
      unless exam.nil?
        log_exam.activated = true
        log_exam.save
        redirect_to new_students_exam_path(id: log_exam.id)
      end
    end
  end
end
