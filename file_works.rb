def find_adjective(line)
  line.split(' is ').[](1).split(' ').first
end

index = 0
lines = []

File.open('./files/reviews.txt') do |review_file|
  lines = review_file.readlines
end

lines.each { |line| index += 1; puts "#{index}.line: #{line}" }

relevant_lines = lines.find_all { |line| line.include? 'Truncated' }
reviews = relevant_lines.reject { |line| line.include? '--' }
puts "\n--- Reviews about Truncated ---", reviews

adjectives = reviews.map do |review|
  adjective = find_adjective(review)
  "'#{adjective.capitalize}'"
end

puts "\nAdjectives: #{adjectives}"
