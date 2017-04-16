puts "Pokos?"
pokos = gets.chomp.encode('UTF-8')

puts "Сколько накосил?"
year = gets.chomp
toyear = year.to_i

puts "Отстока коси: #{toyear}"

if pokos == "покос"
    puts "Правильный покос!"
else
    puts "Неправильный покос"
end


puts "#{pokos} коси!"