module Teachers
  class ExamsMailer < ApplicationMailer
    def send_code log_exam
      @user = log_exam.user
      @code = log_exam.code
      mail to: @user.email, subject: "Exam code"
    end
  end
end
