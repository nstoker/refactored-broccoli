# This includes the installed gem, Sinatra is a basic web serving framework
# Please look at the documentation to find out what you can do to fufill the task http://sinatrarb.com/intro.html
#
# Sinatra WebServer does not do "hotreloading" you will need to restart your webserver after modifying any files for them to take effect.
require 'sinatra'
require_relative './lib/csv_parser.rb' # relative to this file

get '/' do
  # this instance variable will be available in your view
  @csv = CsvParser.csv

  # server side renders ./views/index.erb then serves it to the browser
  erb :index
end

# Example json endpoint to get csv in json format
# note: The end of every method, lamda or block will automatically return
get '/csv' do
  content_type 'application/json'

  # Render json to the browser:-
  #
  # CsvParser.to_json could be replaced by a Ruby hash https://ruby-doc.org/core-2.5.1/Hash.html
  # and convert that to json
  #
  # {
  #   my_object: { with_string: "this is a string", with_number: 1234 },
  #   my_array: ["this is a string", "this is a string", 1234]
  # }.to_json
  CsvParser.to_json
end

# Some basic CRUD routing ability
#
# get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params['name'] is 'foo' or 'bar'
  # "Hello #{params['name']}!"
# end

# get '/' do
#   .. show something ..
# end

# post '/' do
#   .. create something ..
# end

# put '/' do
#   .. replace something ..
# end

# patch '/' do
#   .. modify something ..
# end

# delete '/' do
#   .. annihilate something ..
# end
