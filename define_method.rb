class Author
  define_method("some_method") do
    puts "Some details"
  end

  # same as
  def some_method
    puts "some details"
  end

  genres = %w(fiction coding history)

  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end

end

author = Author.new
author.some_method

author.coding_details("Cal Newport")
author.fiction_details("Ayn Rand")
p author.respond_to?(:coding_details)
