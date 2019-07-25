class LogExamMailer < ApplicationMailer
  def send_mail_after_completed_exam log_exam
    @student = log_exam.user
    @teacher = log_exam.exam.user
    @log_exam = log_exam
    mail to: @teacher.email, subject: "A student has been completed your exam"
  end

  def send_statistics_mail
    User.teacher.each do |teacher|
      @teacher = teacher
      mail to: @teacher.email, subject: "Exam statistics"
    end
  end
end
