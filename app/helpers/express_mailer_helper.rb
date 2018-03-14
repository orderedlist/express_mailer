module ExpressMailerHelper
  def express_mailer_headline_color(configuration, style)
    configuration[:"#{style}_text_color"]
  end

  def express_mailer_button_text_color(configuration, style)
    configuration[:"#{style}_button_text_color"]
  end

  def express_mailer_button_background_color(configuration, style)
    configuration[:"#{style}_button_background_color"]
  end
end
