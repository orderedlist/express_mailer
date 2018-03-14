class ExpressMailerGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)
  
  def copy_express_mailer_file
    copy_file "express_mailer.rb", "config/initializers/express_mailer.rb"
  end
end
