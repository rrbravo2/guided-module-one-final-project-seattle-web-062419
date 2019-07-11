require_relative 'config/environment'
require_relative 'lib/cli/api_communicator'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  Pry.start
end

task :start do
  CommandLineInterface
end
