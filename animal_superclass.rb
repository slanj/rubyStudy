class Animal
  attr_reader :name, :age

  def name=(imya)
    if imya.class != String || imya == ''
      raise 'Имя должно состоять из символов!'
    end

    @name = imya
  end

  def age=(years)
    if years < 0
      raise 'Возраст должен быть больше ноля'
    end

    @age = years
  end
end