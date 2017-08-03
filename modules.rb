module Admin
  class Car
    def signal
      puts 'Bip-bip!'
    end
  end
end

module User
end

class User::Car
  attr_reader :passengers

  def passengers=(number)
    @passengers=number
  end

  def signal
    puts 'Tro-lo=lo'
  end

end
