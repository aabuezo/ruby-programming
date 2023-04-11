start = Time.now

# method parameters
def full_name(first_name, last_name)
    first_name + " " + last_name
end

puts full_name "ale", "capo"


# named arguments
def print_address city:, state:, zip:
    "city: " + city + ", state:" + state + ", zip:" + zip
end

puts print_address state: "buenos aires", zip: '1826', city: "lanus"


# default arguments
def stream_movie title:, lang: 'EN'
    title + ", " + lang
end

#stream_movie title: "Batman", lang: 'ES'
puts stream_movie title: "Batman"


# splat arguments
def customer_assignments *customers
    #"Assigning customers: #{customers}"
    customers.each do |customer|
        puts customer.upcase    
    end     # prints, but also returns the array
end

customer_assignments(
    "Apple",
    "Goolge",
    "Facebook"
)


# Optional arguments
def registration(email:, password:)
    puts "Building account for #{email}"
end

registration(
    email: "jperez@mail.com",
    password: "123456"
)

def registration2(email:, password:, **kwargs)
    puts "Building account for #{email}"

    if kwargs[:role]
        puts "With role: #{kwargs[:role]}"
    end

    if kwargs[:plan]
        puts "With plan: #{kwargs[:plan]}"
    end
end

registration2(
    email: "jperez@mail.com",
    password: "123456",
    role: "admin",
    plan: "super deluxe"
)


# while loop
i = 0
while i < 5
    puts String(i) + " Hey there"
    i += 1
end
puts


# each loop
arr = [234, 2342, 63, 2, 54, 87]

# arr.each do |i|
#     p i
# end

# short form
arr.each {|i| p i}


# for loops - each is more used
for i in 0..42
    p i
end


# nested iterators
teams = {
    "Houston Astros" => {
        "first base" => "Chris Carter",
        "second base" => "Jose Altuve",
        "shortstop" => "Carlos Correa"
    },
    "Texas Rangers" => {
        "first base" => "Prince Fielder",
        "second base" => "R. Odor",
        "shortstop" => "Elvis Andrus"
    }
}

teams.each do |team, players|   # key and value
    puts team
    players.each do |position, player|  # key and value
        p "#{player} starts at #{position}"
    end
end


# select method
(1..10).to_a.select do |x|
    x.even?
end

# short form
# evens = (1..10).to_a.select { |x| x.even? }
# p evens

# even shorter form
evens = (1..10).to_a.select(&:even?)
p evens


# Given an array of strings
# Return only the words that are over 4 letters
words = %w(The quick brown fox jumped over the lazy dog)
p words
p words.select { |x| x.length > 4 }


# select vowels
p %w(a b c d e f g).select { |x| x =~ /[aeiou]/ }   # regular expression


# map
#arr = ["1", "23.0", "0", "4"].map {|x| x.to_i }
arr = ["1", "23.0", "0", "4"].map(&:to_i)
p arr

arr = ("a".."g").to_a.map {|i| i * 2}
p arr

hash = [[1, 2.1, 3.33, 0.9].map {|x| [x, x.to_i]}]
p hash

# same, but converting the array into a Hash
hash = Hash[[1, 2.1, 3.33, 0.9].map {|x| [x, x.to_i]}]
p hash
p hash[3.33]

hash = Hash[%w(A dynamic open source programming language).map {|x| [x, x.length]}]
p hash

# method chaining
hash = {:a => "foo", :b => "bar", :lat => "120.343", :long => "33.212"}
url = hash.map{|a, b| "#{a}=#{b}"}.join('&')
p url


# inject method
total = 0
[3, 2, 4, 53, 5, 3, 23343, 4342, 12, 3].each do |i|
    total += i
end
p total

# same as
p [3, 2, 4, 53, 5, 3, 23343, 4342, 12, 3].inject(&:+)   # + is a method
p [3, 2, 4, 53, 5, 3, 23343, 4342, 12, 3].inject(&:*)   # * is a method too


# Arrays
arr = ["safs", 3, 5, 23.3, "fasdf", true, 4, 3, 3, 3]
p arr, arr.length
arr.delete(3)
p arr, arr.length
arr.delete_at(1)
p arr, arr.length
arr = [0.32, 27, 2, 5, 11, 17, 4, 3.3, 12]
arr.delete_if {|average| average < 10}
p arr, arr.length
arr = ["juan", "pedro", "marta", "josefina", "rafael", "carla"]
str = arr.join(", ")
p str
arr.push("juana", "tristan")
p arr
arr.pop
p arr


# Hashes (dicts)
positions = {first_base: "Chris Carter", second_base: "Jose Altuve", short_stop: "Carlos Correa"}
p positions
p positions[:second_base]
# otra forma
positions = {"first_base" => "Chris Carter", "second_base" => "Jose Altuve", "short_stop" => "Carlos Correa"}
p positions
# otra
positions = {:first_base => "Chris Carter", :second_base => "Jose Altuve", :short_stop => "Carlos Correa"}
p positions
positions[:other] = "other player"
p positions
# delete
people = {jordan: 32, tiffany:27, kristine: 10, heather: 29}
p people
p people[:tiffany]
people.delete(:kristine)
p people
# lista de keys
people.each_key do |key|
    puts key
end
# shortcut
p people.keys
# lista de valores
people.each_value do |key|
    puts key
end
# shorcut
p people.values
# cambiar las claves por los valores
people_inv = people.invert
p people_inv
# merge two hashes
merged = positions.merge(people)
p merged
# convert hash to array
arr = people.to_a
p arr


# Conditionals
if people[:tiffany] == 32 && people[:tiffany] != 25
    puts "tiffany is 32 years old"
elsif people[:tiffany] == 10
    puts "tiffany is 10 years old"
else
    puts "tiffany is not 10 nor 32 years old"
end
# unless
names = ["juan", "pedro", "carlos", "mario"]
#names = []
unless names.empty?
    names.each {|name| p name}
end
# same as
if !names.empty?
    names.each {|name| p name}
end
# same as
names.each {|name| p name} unless names.empty?
# same as
names.each {|name| p name} if !names.empty?

unless false && false
    puts "hey there"
end
# same as
if !(false && false)
    puts "hey there"
end






finish = Time.now
print "time elapsed: "
print finish - start 
puts " sec."
