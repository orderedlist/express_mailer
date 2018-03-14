# Preview all emails at http://localhost:3000/rails/mailers/reminder_mailer
class ExpressMailerPreview < ActionMailer::Preview
  def info_email
    ExpressMailer.info(
      subject: 'Test subject',
      header: 'Today’s Profits',
    )
  end
end
