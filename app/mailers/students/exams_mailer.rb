module Students
  class ExamsMailer < ApplicationMailer
    def send_code user, code
      @user = user
      @code = code
      mail to: @user.email, subject: "Exam code"
    end
  end
end
