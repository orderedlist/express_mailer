require "express_mailer/attributes"
require "express_mailer/configuration"
require "express_mailer/engine"
require "express_mailer/version"

module ExpressMailer
  module_function

  # Public: Configure express mailer.
  #
  #   ExpressMailer.configure do |config|
  #     config.default { ... }
  #   end
  #
  # Yields ExpressMailer::Configuration instance.
  def configure
    yield configuration if block_given?
  end

  # Public: Returns ExpressMailer::Configuration instance.
  def configuration
    @configuration ||= Configuration.new
  end

  # Public: Sets ExpressMailer::Configuration instance.
  def configuration=(configuration)
    @configuration = configuration
  end

  # Public: Creates an ActionMailer instance with attributes using the info styles
  #
  #   ExpressMailer.info({
  #     to: 'steve@orderedlist.com',
  #     subject: 'Subscriptions processed',
  #     ...
  #   end
  #
  def info(attributes)
    ExpressMailer::Mailer.express(attributes, :info)
  end

  # Public: Creates an ActionMailer instance with attributes using the info styles
  #
  #   ExpressMailer.success({
  #     to: 'steve@orderedlist.com',
  #     subject: 'Subscriptions processed',
  #     ...
  #   end
  #
  def success(attributes)
    ExpressMailer::Mailer.express(attributes, :success)
  end

  # Public: Creates an ActionMailer instance with attributes using the info styles
  #
  #   ExpressMailer.warning({
  #     to: 'steve@orderedlist.com',
  #     subject: 'Subscriptions processed',
  #     ...
  #   end
  #
  def warning(attributes)
    ExpressMailer::Mailer.express(attributes, :warning)
  end

  # Public: Creates an ActionMailer instance with attributes using the info styles
  #
  #   ExpressMailer.error({
  #     to: 'steve@orderedlist.com',
  #     subject: 'Subscriptions processed',
  #     ...
  #   end
  #
  def error(attributes)
    ExpressMailer::Mailer.express(attributes, :error)
  end

  if defined?(Delayed::DelayMail)
    extend Delayed::DelayMail
  end
end
