class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, options={})
    self.name = name
    self.age = options[:age]
    self.occupation = options[:occupation]
    self.hobby = options[:hobby]
    self.birthplace = options[:birthplace]
  end
end

petro = Candidate.new("Petro Ivanovich",
                      age: 99,
                      occupation: 'Berlin',
                      hobby: 'Raketostroenie',
                      birthplace: "Kennigsberg")

p petro