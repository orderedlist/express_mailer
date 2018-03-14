ExpressMailer.configure do |config|
  config.default_to = "me@test.com"
  config.app_name = "Test Application"
  config.app_url = "http://test.localhost"
  config.default_footer = "You received this email because it was sent to you by our application. If you want, you can <a href=\"http://example.com/admin\">manage your notifications</a>."
end
