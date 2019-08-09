#class for Model3 goes here
#Feel free to change the name of the class
class Appointment

  @@all = [] 
  attr_reader :doctor, :patient 
  
  def initialize(attributes)
    @appointment = attributes[:appointment]
    @doctor = attributes[:doctor]
    @patients = attributes[:patients]
    @@all << self

  end
    
  def self.all
    @@all
  end 

end
