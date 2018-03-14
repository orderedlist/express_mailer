module ExpressMailer
  class Button
    attr_accessor :text, :href

    def self.create(options)
      if options
        new(options)
      else
        nil
      end
    end

    def initialize(options = {})
      @text = options.fetch(:text)
      @href = options.fetch(:href)
    end
  end
end
