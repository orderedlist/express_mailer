module ExpressMailer
  class Configuration
    attr_accessor :default_to, :default_sender, :default_footer,
      :subject_prefix, :app_name, :app_logo, :app_url,
      :background_color, :text_color, :border_color, :webfont_url,
      :headline_font_family, :text_font_family,
      :info_text_color, :info_button_text_color, :info_button_background_color,
      :success_text_color, :success_button_text_color, :success_button_background_color,
      :warning_text_color, :warning_button_text_color, :warning_button_background_color,
      :error_text_color, :error_button_text_color, :error_button_background_color

    def initialize(options = {})
      @default_to = options.fetch(:default_to, nil)
      @default_sender = options.fetch(:default_sender, 'noreply@example.com')
      @default_footer = options.fetch(:default_footer, nil)
      @subject_prefix = options.fetch(:subject_prefix, nil)
      @app_name = options.fetch(:app_name, 'Example Company')
      @app_logo = options.fetch(:app_logo, nil)
      @app_url = options.fetch(:app_url, 'http://example.com')

      @background_color = options.fetch(:background_color, '#212E3C')
      @text_color = options.fetch(:text_color, '#FFF')
      @border_color = options.fetch(:border_color, '#5E637A')

      @webfont_url = options.fetch(:webfont_url, 'https://fonts.googleapis.com/css?family=Dosis:600|Lato:400,400i,700,700i')
      @headline_font_family = options.fetch(:headline_font_family, "Dosis, 'Helvetica Neue', 'Arial', 'sans-serif'")
      @text_font_family = options.fetch(:text_font_family, "Lato, 'Helvetica Neue', 'Arial', 'sans-serif'")

      @info_text_color = options.fetch(:info_text_color, '#AC8DF7')
      @info_button_text_color = options.fetch(:info_button_text_color, @background_color)
      @info_button_background_color = options.fetch(:info_button_text_color, @info_text_color)

      @success_text_color = options.fetch(:success_text_color, '#02D6A1')
      @success_button_text_color = options.fetch(:success_button_text_color, @background_color)
      @success_button_background_color = options.fetch(:success_button_text_color, @success_text_color)

      @warning_text_color = options.fetch(:warning_text_color, '#FFD166')
      @warning_button_text_color = options.fetch(:warning_button_text_color, @background_color)
      @warning_button_background_color = options.fetch(:warning_button_text_color, @warning_text_color)

      @error_text_color = options.fetch(:error_text_color, '#EF476F')
      @error_button_text_color = options.fetch(:error_button_text_color, @background_color)
      @error_button_background_color = options.fetch(:error_button_text_color, @error_text_color)
    end

    def text_font_family
      @text_font_family.gsub('"', '\'').html_safe
    end

    def headline_font_family
      @headline_font_family.gsub('"', '\'').html_safe
    end
  end
end
