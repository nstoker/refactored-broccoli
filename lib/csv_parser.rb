# This includes a core module in Ruby https://github.com/ruby/csv - Ruby documentation https://ruby-doc.org/
require 'csv'

# Define our class
class CsvParser
  # Ruby constant
  # reference this outside this file like CsvParser::FILE
  # reference this within this file like FILE
  FILE = "./files/jeopardy.csv".freeze

  # add initialization data by doing:
  # parser = CsvParser.new('this', 'that')
  # then update the method with def initialize(var1, var2)
  # this adds them as local variables where var1 = 'this' and var2 = `that`
  def initialize()
    @example_instance_variable = 'Foobar String'
  end

  # instance methods below
  def get_foobar_string
    @example_instance_variable
  end

  # class methods below
  # instance variables defined above are not available in these methods
  # CsvParser.csv
  def self.csv
    CSV.read(FILE, headers: true).to_a
  end

  # CsvParser.to_json
  def self.to_json
    # as we are within a class method, other class methods are available
    csv.to_json
  end
end
