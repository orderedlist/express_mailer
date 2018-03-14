ExpressMailer.configure do |config|
  config.default_to = "me@test.com"
  config.app_name = "Test Application"
  config.app_url = "http://test.localhost"
  config.default_footer = "You received this email because you are an administrator. <a href=\"http://example.com/admin\">View the admin</a>."
end
