require_relative '../config/environment'





new_cli = CommandLineInterface.new
new_cli.greet

input = new_cli.gets_user
