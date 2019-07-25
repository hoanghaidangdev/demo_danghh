class DailyWorker
  include Sidekiq::Worker

  MAIL_DAY = 1

  def perform action
    case action
    when MAIL_DAY
      LogExamMailer.send_statistics_mail.deliver_now
    end
  end
end
