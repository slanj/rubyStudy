class Cat
  attr_reader :name

  def name=(imya)
    @name = imya
  end

  def talk
    r = rand(5)
    if r.zero?
      puts 'Люди - мои слуги'
    elsif r == 1
      puts 'Покорми меня!'
    elsif r == 2
      puts 'Я наблевала в ванной'
    elsif r == 3
      puts 'Вот я - кот, а ты чего добился в жизни?'
    elsif r == 4
      puts 'Возьми на руки котика!'
    end
  end

  def sayname
    puts "Я - #{@name}!"
  end

  def polezhat(mesto)
    puts "Иду лежать на #{mesto}"
  end
end

skvo = Cat.new
skvo.name = 'Скво'
skvo.sayname
skvo.talk
