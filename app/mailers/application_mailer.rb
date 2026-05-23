class ApplicationMailer < ActionMailer::Base
  default from: ENV.fetch("MAILGUN_FROM", "noreply@example.com")
  layout "mailer"
end
