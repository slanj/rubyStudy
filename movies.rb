movies = { Jumanji: 42,  The_Fisher_king: 100500}

puts 'What do you want from me?'
choice = gets.chomp

case choice
  when 'add'
  	puts 'Enter movie title'
  	title = gets.chomp.to_sym
  	puts 'Enter movie rating'
  	rating = gets.chomp.to_i
  	if movies[title].nil?
  		movies[title] = rating
  		puts "Movie #{title} was added with rating #{rating}"
    else
    	puts "This movie already exists with rating #{movies[title]}"
    end
  when 'update'
  	puts 'Enter movie title'
  	title = gets.chomp.to_sym
    if movies[title].nil?
      puts "There is no movie #{title} in database"
    else
      puts "Movie found. Enter new rating"
      rating = gets.chomp.to_i
      movies[title] = rating
      puts "Movie #{title} was updated with rating #{movies[title]}"
    end
  when 'display'
  	movies.each do |movie, rating|
      puts movie.to_s + ": " + rating.to_s
    end
  when 'delete'
  	puts 'Enter movie you want to delete'
    title = gets.chomp.to_sym
  	if movies[title].nil?
      puts "There is no such movie"
    else
      movies.delete(title)
      puts "Movie #{title} was deleted"
    end
  else
  	puts 'Error!'
end