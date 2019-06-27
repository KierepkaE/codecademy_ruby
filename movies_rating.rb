movies = {
  Wonder: 7.8,
  Closer: 8.8
  }

puts "What would you like to do? "

choice = gets.chomp

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "How would you rate this movie? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  else
    puts "That movie already exists! It's rating is #{movies[title.to_sym]}."
  end
when "update"
puts "What's the title?  "
  title = gets.chomp
  if movies[title].nil?
    puts "You didn't rate this movie yet!"
  else
    puts "New rating?  "
    rating = gets.chomp
    movies[title.to_sym]=rating.to_i
  end
when "display"
  movies.each {|t,r| puts "#{t}: #{r}"}
when "delete"
  puts "Which movie would you like to delete?  "
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "You didn't rate this movie yet!"
  else
    movies.delete(title.to_sym)
    puts "Just removed #{title}."
  end
else
  puts "Error!"
end