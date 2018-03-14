# Preview all emails at http://localhost:3000/rails/mailers/reminder_mailer
class ExpressMailerPreview < ActionMailer::Preview
  def info_email
    ExpressMailer.info(
      subject: 'Test subject',
      header: 'Today’s Profits',
      image: {
        url: 'https://pbs.twimg.com/profile_images/949287080231952384/8ztpArYE_400x400.jpg',
        alt: 'Zeldman',
        shape: :circle
      },
      headline: '$2,400'
    )
  end
end
