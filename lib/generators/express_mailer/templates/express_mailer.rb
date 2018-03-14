ExpressMailer.configure do |config|
  config.default_from = 'Example App <noreply@example.com>'
  config.app_name = 'Example Company'
  config.app_url = 'http://example.com'

  #config.default_to = 'admins@example.com'
  #config.default_footer = 'This was only sent to Admins'

  # config.subject_prefix = '[Example]'
  # config.app_logo = 'https://s3.amazon.com/example/mailers/example-white.png'
  # config.background_color = '#212E3C'
  # config.text_color = '#fff'
  # config.border_color = '#5E637A'
  #
  # config.webfont_url = 'https://fonts.googleapis.com/css?family=Dosis:600|Lato:400,400i,700,700i'
  # config.headline_font_family = "Dosis, 'Helvetica Neue', 'Arial', 'sans-serif'"
  # config.text_font_family = "Lato, 'Helvetica Neue', 'Arial', 'sans-serif'"
  #
  # config.info_text_color = '#AC8DF7'
  # config.info_button_text_color = config.background_color
  # config.info_button_background_color = config.info_text_color
  #
  # config.success_text_color = '#02D6A1'
  # config.success_button_text_color = config.background_color
  # config.success_button_background_color = config.info_text_color
  #
  # config.warning_text_color = '#FFD166'
  # config.warning_button_text_color = config.background_color
  # config.warning_button_background_color = config.info_text_color
  #
  # config.error_text_color = '#EF476F'
  # config.error_button_text_color = config.background_color
  # config.error_button_background_color = config.info_text_color
end
