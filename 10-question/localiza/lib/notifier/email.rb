require_relative 'base'

module Notifier
  class Email < Base
    attr_accessor :subject, :content

    def initialize(to, subject, content)
      super(to)

      self.subject = subject
      self.content = content
    end

    def to_send
      puts "Email enviado para #{to}"
      puts subject
      puts content
      puts '--------------------------------'
    end
  end
end
