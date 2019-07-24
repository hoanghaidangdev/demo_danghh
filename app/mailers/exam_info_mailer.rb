class ExamInfoMailer < ApplicationMailer
  def exam_info_mail log_exam
    @student = log_exam.user
    @teacher = log_exam.exam.user
    @log_exam = log_exam
    mail to: @teacher.email, subject: "A student has been completed your exam"
  end
end
