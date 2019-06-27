puts "What's your language?"
greeting = gets.chomp

case greeting
  when "English"
  puts "Hello!"
  when "French"
  puts "Bonjour!"
  when "German"
  puts "Guten Tag!"
  when "Finnish"
  puts "Haloo!"
else
  puts "I'm not sure what you mean."
end
