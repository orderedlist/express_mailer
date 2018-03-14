module ExpressMailer
  class Table
    attr_accessor :data, :column_count

    def self.create(data)
      if data
        new(data)
      else
        nil
      end
    end

    def initialize(data = [])
      @data = data
      @column_count = rows[0].size
    end

    def rows
      @data
    end
  end
end
