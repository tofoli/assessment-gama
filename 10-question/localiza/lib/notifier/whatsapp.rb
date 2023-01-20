require_relative 'base'

module Notifier
  class Whatsapp < Base
    attr_accessor :message

    def initialize(to, message)
      super(to)
      self.message = message
    end

    def to_send
      puts "Whatsapp enviado para #{to}"
      puts message
      puts '--------------------------------'
    end
  end
end
