module ExpressMailer
  class Image
    attr_accessor :url, :alt, :background, :shape, :size

    def self.create(attrs)
      if attrs
        new(attrs)
      else
        nil
      end
    end

    def initialize(options = {})
      @url = options.fetch(:url)
      @alt = options.fetch(:alt)
      @background = options.fetch(:background, 'transparent')
      @shape = options.fetch(:shape, :normal) # :normal, :circle, :rounded
      @size = options.fetch(:size, :normal) # :normal, :large
    end

    def shape_class
      "shape-#{shape}"
    end

    def height
      @size.to_sym == :large ? 240 : 120
    end
  end
end
