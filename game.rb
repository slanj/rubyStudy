# Монументальная игра на языке Ruby

puts 'Welcome to SlanjGames'
print 'Как тебя зовут?'

input = gets.chomp.encode('UTF-8')
puts "Превед, #{input}"

puts 'Я загадал число от 1 до 100'
puts 'Угадаешь?'

zagadka = rand(100) + 1
puts 'Загаданное число:' + zagadka.to_s

num_guesses = 0
guess = 0

while num_guesses < 10 && guess == 0
  puts "Осталось попыток: #{10 - num_guesses}"
  print 'Введи число: '
  chislo = gets.to_i
  num_guesses += 1
  if chislo == zagadka
    guess = 1
    puts 'Угадал! Число:' + zagadka.to_s
  elsif chislo > zagadka
    puts 'Слишком большое число'
  elsif chislo < zagadka
    puts 'Слишком маленькое число'
  end
end

if guess.zero?
  puts "Звыняй, не угадал. Мойо число было: #{zagadka}"
end
