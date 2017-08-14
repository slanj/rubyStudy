class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, age:, occupation:, hobby: nill, birthplace: 'Kennigsberg')
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end
end

petro = Candidate.new("Petro Ivanovich",
                      age: 99,
                      occupation: 'Berlin',
                      hobby: 'Raketostroenie')

p petro