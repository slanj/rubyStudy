class C
  def self.tm
    puts "#{self} Class method"
  end
  def tm
    puts "#{self} Instance method"
  end
end

class D < C
end

c = C.new
d = D.new

puts C.singleton_methods.to_s + " is a singleton method"
puts D.singleton_methods.to_s + " is a singleton method"
C.tm
D.tm
c.tm
d.tm