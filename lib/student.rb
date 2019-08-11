#class for Model2 goes here
#Feel free to change the name of the class
class Student
    attr_accessor :name, :grade
    @@all = []

    def initialize(name, grade)
        @name = name
        @grade = grade
        @@all << self
    end

    def self.all
        @@all
    end

    

end
