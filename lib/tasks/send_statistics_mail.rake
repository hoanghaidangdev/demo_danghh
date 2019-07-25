desc "Send exams statistics to teacher everyday"
task send_statistics_mail: :environment do
  DailyWorker.perform_async DailyWorker::MAIL_DAY
  puts "sent email to teacher at #{Time.now}"
end
