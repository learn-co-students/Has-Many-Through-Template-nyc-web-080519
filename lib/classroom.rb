#class for Model3 goes here
#Feel free to change the name of the class
class ClassRoom
    attr_accessor :student, :teacher, :name, :location
    @@all = []

    def initialize(student, teacher, name, location)
        @student = student
        @teacher = teacher
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end
end
