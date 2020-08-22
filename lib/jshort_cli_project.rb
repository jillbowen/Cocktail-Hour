# require 'dotenv'
require 'pry'
require 'httparty'
require 'json'



require_relative "./jshort_cli_project/version"
require_relative "./jshort_cli_project/cli"
require_relative "./jshort_cli_project/cocktail"
require_relative "./jshort_cli_project/api"

module JshortCliProject
  class Error < StandardError; end
  # Your code goes here...
end
