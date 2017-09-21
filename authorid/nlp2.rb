require 'treat'
include Treat::Core::DSL

story = document('collections/news/lab_mice.txt')

story.apply(:chunk, :segment, :tokenize, :category)
puts 'Paragraps in document: ' + story.paragraphs.count.to_s

brain_words = story.words.select { |word| word.to_s == "scientists" }
puts 'Brain in document before stemming: ' + brain_words.count.to_s

puts story.paragraphs[0].to_s

puts "\nPrint all normalized words \n"
inf_words = story.words.map do |word| 
    if word.category == "noun"
        word = word.singular.downcase
    elsif word.category == "verb"
        word = word.present_participle.downcase
    else
        word = word.to_s
    end
end

count_words = Hash.new(0)

inf_words.each do |word| 
    count_words[word] += 1 
end

puts "\nCounting words in news \n"

count_words = count_words.sort_by { |key, value| value }.reverse
count_words.each { |key, value| puts "#{key} : #{value}" }




