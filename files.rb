=begin 
r - reading
a - appending to a file
w - just writing
w+ - reading and writing
a+ - open a file for reading and appending
r+ - open a file for updating, both reading and writing
=end

# Write using a block
File.open("teams.txt", 'w+') {|f| f.write("Twins, Astros, Mets, Yankees")}

# Write step by step
file_to_save = File.new("other_teams.txt", 'w+')
file_to_save.puts("A's, Diamondbacks, Mariners, Marlins")
file_to_save.close


# Read a file
teams_one = File.read("teams.txt")
teams_two = File.read("other_teams.txt")
# prints as sring
p teams_one   
# prints as an array
teams = teams_one.split(', ') + teams_two.strip.split(', ')  
p teams

teams.each do |team|
  p team.downcase
end


# Delete a file
File.delete("teams.txt")
File.delete("other_teams.txt")


# Append to a file
10.times do
  sleep 1   # 1 sec
  puts "Record saved..."
  File.open("logs.txt", 'a') {|f| f.puts "Server started at: #{Time.new}"}
end
