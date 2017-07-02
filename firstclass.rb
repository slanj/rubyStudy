class Sample
  def hello
    puts "Hello, Class!"
  end
end

class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Aloha, #{target}, ya studenteg #{first_name}"
  end

  def favorite_number
    42
  end
end

def water_status(minutes)
  if minutes < 7
    puts "The water is not boiling yet."
  elsif minutes == 7
    puts "It's just barely boiling"
  elsif minutes == 8
    puts "It's boiling!"
  else
    puts "Hot! Hot! Hot!"
  end
end

frank = Student.new
frank.first_name = 'Frank'
frank.introduction("Petya")

puts "#{frank.first_name} knows what is #{frank.favorite_number}"

s = Sample.new
5.times {s.hello}

3.times do |i|
  puts "#{i}: Hello, World!"
end

water_status(9)