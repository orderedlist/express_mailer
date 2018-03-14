# Preview all emails at http://localhost:3000/rails/mailers/reminder_mailer
class ExpressMailerPreview < ActionMailer::Preview
  def info_email
    ExpressMailer.info(
      subject: 'Test subject',
      header: 'Today’s Profits',
      image: {
        url: 'https://cdn.shopify.com/s/files/1/1061/1924/files/Money_Bag_Emoji.png',
        alt: 'Money Bag'
      },
      headline: '$2,400',
      table: [
        ['Acme Corporation', '$1200'],
        ['Enterprise LLC', '$600'],
        ['Corner Market', '$600'],
      ],
      text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget ex ullamcorper, dapibus mauris euismod, ultrices elit.',
      button: {
        text: 'View details',
        url: 'http://example.com/orders/1'
      }
    )
  end
end
