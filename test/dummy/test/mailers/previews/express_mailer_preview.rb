# Preview all emails at http://localhost:3000/rails/mailers/reminder_mailer
class ExpressMailerPreview < ActionMailer::Preview
  def info_email
    ExpressMailer.info(
      subject: 'Today’s Profits',
      from: 'Example App <noreply@example.com>',
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
        href: 'http://example.com/orders/1'
      }
    )
  end

  def success_email
    ExpressMailer.success(
      subject: 'New Signup - Rachel Richards',
      preheader: 'New Signup',
      header: 'Rachael Richards',
      image: {
        url: 'https://pbs.twimg.com/profile_images/378800000084891630/3f7cffb42f5d216e53ff73e82020f7b5_400x400.png',
        alt: 'Rachel Richards avatar',
        shape: :circle
      },
      headline: 'Premium',
      text: '$29/month',
      button: {
        text: 'View order',
        href: 'http://example.com/orders/1'
      }
    )
  end

  def warning_email
    ExpressMailer.warning(
      subject: 'Approaching Data Limit',
      preheader: 'Approaching Limit',
      header: 'Space Remaining',
      headline: '56mb',
      text: 'Upgrade your account or clear out some of your assets.',
      button: {
        text: 'Manage storage',
        href: 'http://example.com/manage/storage'
      }
    )
  end

  def error_email
    ExpressMailer.error(
      subject: 'User Cancelled - Acme Incorporated',
      preheader: 'User Cancelled',
      header: 'Acme Incorporated',
      headline: '-$320/mo',
      button: {
        text: 'View cancellation',
        href: 'http://example.com/orders/1'
      }
    )
  end
end
