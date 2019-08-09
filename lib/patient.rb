#class for Model2 goes here
#Feel free to change the name of the class
class Patient 

  @@all = []

  attr_reader :name, :age, :gender

  def initialize(attributes)
    @name = attributes[:name]
    @age = attributes[:age]
    @gender = attributes[:gender]
    @@all <<self 
    puts attributes
  end

  def self.all
    @@all 
  end 

end
