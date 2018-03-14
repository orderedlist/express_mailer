# frozen_string_literal: true

if defined?(ActionMailer)
  class ExpressMailer::Mailer < ActionMailer::Base
    layout false

    def express(attributes, style = :info)
      @config = ExpressMailer.configuration
      @attributes = ExpressMailer::Attributes.new(attributes.merge(style: style))

      mail({
        to: @attributes.to,
        from: @attributes.from,
        reply_to: @attributes.reply_to,
        subject: @attributes.subject
      })
    end
  end
end
