require 'gyoku'
require_relative 'base'

module Writer
  class Xml < Base
    def format
      root = data.instance_of?(Array) ? { root: data } : data

      Gyoku.xml root
    end
  end
end
