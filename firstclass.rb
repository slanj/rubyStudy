class Sample
  def hello
    puts "Hello, Class!"
  end
end

s = Sample.new

5.times {s.hello}

3.times do |i|
  puts "#{i}: Hello, World!"
end
