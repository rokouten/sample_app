class ApplicationMailer < ActionMailer::Base
  default from: ENV.fetch("MAILGUN_FROM", "postmaster@sandboxc9f0222016c549c786cbb510185d83a4.mailgun.org")
  layout "mailer"
end
