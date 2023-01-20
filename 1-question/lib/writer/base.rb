module Writer
  class Base
    attr_accessor :data

    def initialize(data)
      self.data = data
    end

    def format
      raise NotImplementedError
    end
  end
end
