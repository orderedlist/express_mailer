require 'express_mailer/image'
require 'express_mailer/table'
require 'express_mailer/button'

module ExpressMailer
  class Attributes
    attr_accessor :configuration, :style, :to, :from, :reply_to, :subject,
      :preheader, :header, :image, :footer, :headline, :table, :text, :button

    delegate :app_url, :app_name, :app_logo, :text_color, :background_color,
      :border_color, :webfont_url, :text_font_family, :headline_font_family,
      to: :configuration

    def initialize(options = {})
      @configuration = ExpressMailer.configuration
      @style = options.fetch(:style, :info)
      @to = options.fetch(:to, @configuration.default_to)
      @from = options.fetch(:from, @configuration.default_sender)
      @reply_to = options.fetch(:reply_to, nil)
      @subject = options.fetch(:subject, "Express Mail")
      @preheader = options.fetch(:preheader, Date.today.strftime('%B %-d, %Y'))
      @header = options.fetch(:header, @subject)
      @footer = options.fetch(:footer, @configuration.default_footer)
      @headline = options.fetch(:headline, nil)
      @image = ExpressMailer::Image.create(options.fetch(:image, nil))
      @table = ExpressMailer::Table.create(options.fetch(:table, nil))
      @button = ExpressMailer::Button.create(options.fetch(:button, nil))
      @text = options.fetch(:text, nil)
    end

    def subject
      "#{@configuration.subject_prefix} #{@subject}".strip
    end

    def headline_text_color
      @configuration.instance_variable_get(:"@#{@style}_text_color")
    end

    def button_text_color
      @configuration.instance_variable_get(:"@#{@style}_button_text_color")
    end

    def button_background_color
      @configuration.instance_variable_get(:"@#{@style}_button_background_color")
    end

    def text_align
      if @text.to_s.length > 240
        :left
      else
        :center
      end
    end

    def text_size
      if @text.to_s.length > 60
        20
      else
        26
      end
    end
  end
end
