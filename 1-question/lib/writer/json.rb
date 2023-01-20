require 'json'
require_relative 'base'

module Writer
  class Json < Base
    def format
      data.to_json
    end
  end
end
