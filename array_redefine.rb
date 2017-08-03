class Array
  def each
    index = 0
    while index < self.length
      yield self[index]
      index += 1
      puts 'Woohoo!'
    end
  end
end

a = [1, 2, 3]
a.each { |item| puts item }

def a.introduce
  puts 'I am so unique array'
end

a.introduce
