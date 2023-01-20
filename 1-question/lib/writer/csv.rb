require 'csv'
require_relative 'base'

module Writer
  class Csv < Base
    def format
      column_names = data.first.keys

      CSV.generate do |csv|
        csv << column_names
        data.each do |x|
          csv << x.values
        end
      end
    end
  end
end
