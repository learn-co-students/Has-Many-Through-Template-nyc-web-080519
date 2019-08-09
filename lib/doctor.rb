require 'pry'

#class for Model1 goes here
#Feel free to change the name of the class
class Doctor 

  attr_reader :name, :school

  @@all = []

  def initialize(attributes)
    @name = attributes[:name]
    @degree = attributes[:degree]
    @gender = "male"
    @@all << self 
    # puts @name
    # puts @degree
  end 

  def self.all
    @@all
  end


  #see all the APPTs I have for today 

  def my_appointments 
    #look through all the appointments 
    my_appointments == Appointment.all.select do |apt|
      apt.doctor == self 
    end 
  end 

end
