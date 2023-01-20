require_relative 'writer/json'
require_relative 'writer/csv'
require_relative 'writer/xml'

module Writer
  # @param data can array of hash
  def self.write(data, formatter = Writer::Json)
    formatter.new(data).format
  end
end
