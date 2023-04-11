require 'yaml'

config = YAML.load_file('config.yml')

secret = config.dig('secret_key')
prd_key = config.dig('production', 'aws_key')
dev_key = config.dig('development', 'aws_key')

puts "Secret: #{secret}"
puts "Prod. Key: #{prd_key}"
puts "Dev. Key: #{dev_key}"

