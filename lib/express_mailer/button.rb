module ExpressMailer
  class Button
    attr_accessor :text, :url

    def self.create(options)
      if options
        new(options)
      else
        nil
      end
    end

    def initialize(options = {})
      @text = options.fetch(:text)
      @url = options.fetch(:url)
    end
  end
end
