# ExpressMailer

ExpressMailer is intended to be a quick and easy way to send yourself or your team members nice looking emails about things that happen in your rails application. No need for creating a new Mailer, copy views, wade through email HTML, or any of that. Just tell ExpressMailer a few things about what you want to send, and it makes a pre-designed ActionMailer object you can manipulate or deliver.

![ExpressMailer Preview](https://raw.githubusercontent.com/orderedlist/express_mailer/master/preview/express_mailer.jpg)

### What this IS:

- A quick way to keep yourself up to date on events in your application
- Mildly customizable (fonts and colors)
- Pretty and flexible _enough_

### What this IS NOT:

ExpressMailer is not intended to be a replacement for your user transactional emails (signups, notifications, etc). While there's nothing really stopping you from using it as such, it's probably never going to be flexible enough to satisfy all the needs of transactional emails. For user facing stuff, you should actually make something that's better and more personalized than ExpressMailer.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'express_mailer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install express_mailer

Generate the initializer:

    $ rails generate express_mailer

Edit `config/initializers/express_mailer.rb` to modify your configuration.

## Usage

An ExpressMailer email can be made up of several pieces, many of which are optional.

- **app_logo:** or **app_name:** defined in the configuration (required)
- **preheader:** An introductory few words before the header, defaults to today's date (optional)
- **header:** Describe the event, defaults to the subject (required)
- **image:** Show an image, avatar, logo, or something else below the header (optional)
  - **url:** The url of the image (required)
  - **alt:** The alt text of the image (required)
  - **background:** Background color of the image, defaults to transparent (optional)
  - **shape:** Shape of the image (`:normal`, `:rounded`, or `:circle`), defaults to `:normal` (optional)
  - **size:** Size of the image (`:normal`, or `:large`), defaults to `:normal` (optional)
- **headline:** Tell what happened (eg. an amount, a title, etc.) (optional)
- **table:** An array of arrays to give some details about the event (optional)
- **text:** A brief explanation of the event (optional)
- **button:** Give me something to click on (optional)
  - **text:** The text of the button
  - **href:** the href of the button
- **footer:** Give more info, or describe why the recipient is receiving the message (optional)

In addition to providing these details, there are some mail-specific attributes:

- **to:** an email or more, can also be set with **default_to:** in the configuration (required)
- **subject:** the subject line of the email (required)
- **from:** who the email is from, can also be set with **default_from:** in the configuration  (required)
- **reply_to:** sets the reply-to header of the email  (optional)

Given these attributes, there are 4 styles of emails that can be sent that loosly correspond to types of events: (**info**, **success**, **warning**, and **error**). These are called directly on `ExpressMailer`.

```ruby
attributes = {
  to: 'me@test.com',
  subject: 'New Signup by Rachael Thompson',
  preheader: 'New Signup',
  header: 'Rachael Thompson',
  headline: 'Premium Plan',
  text: '$29/month',
  button: {
    text: 'View order',
    href: 'http://example.com/orders/1'
  }
}

mailer = ExpressMailer.success(attributes)
mailer.deliver

# Other styles can be used as well...
#
#   ExpressMailer.info(attributes)
#   ExpressMailer.success(attributes)
#   ExpressMailer.warning(attributes)
#   ExpressMailer.error(attributes)
#
# These will use the colors described in the configuration for each specific state
```

## Delivery

ExpressMailer relies on ActionMailer being setup to send in your system. If your application is already sending email, you shouldn't have to change anything. If not, check out setting up [SendGrid](https://github.com/sendgrid/sendgrid-ruby) or [Postmark](https://github.com/wildbit/postmark-rails).

## Development

After checking out the repo, run `bin/bootstrap` to install dependencies. Then, run `rake` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/orderedlist/express_mailer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ExpressMailer project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/orderedlist/express_mailer/blob/master/CODE_OF_CONDUCT.md).
