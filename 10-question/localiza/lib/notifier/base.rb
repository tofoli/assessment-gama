module Notifier
  class Base
    attr_accessor :to

    def initialize(to)
      self.to = to
    end

    def to_send
      raise NotImplementedError
    end
  end
end
