# easy and dirty way
begin
  puts 8/0
rescue
  puts "Rescued the error"
end


# how to handle it properly
begin
  puts 8/0
rescue ZeroDivisionError => e
  puts "Error occurred: #{e}"
end

# other example
begin
  puts nil + 10
rescue StandardError => e
  puts "Error occurred: #{e}"
end


# Custom error handler
def error_logger(e)
  File.open("error-log.txt", 'a') do |file|
    file.puts e
  end
end

begin
  puts 8/0
rescue StandardError => e
    error_logger("Error: #{e} at #{Time.now}")
end

