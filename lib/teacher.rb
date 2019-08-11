#class for Model1 goes here
#Feel free to change the name of the class
class Teacher
    attr_accessor :name, :subject, :age
    @@all = []

    def initialize(name, subject, :age)
        @name = name
        @subject = subject
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def my_classrooms
        ClassRoom.all.select do |classroom|
            classroom.teacher == self
        end
    end

    def my_students
        self.my_classrooms.select do |classroom|
            classroom.student
        end
    end

    def add_student(student, name, location)
        ClassRoom.new(student, self, name, location)
    end

    def my_students_in_grade(grade)
        self.my_classrooms.select do |classroom|
            classroom.student.grade == grade
        end
    end

    def how_many_classrooms
        self.my_classrooms.count
    end

    #all teachers who teach a student
    def self.teachers_with_students

    end

end


#classroom, student, teacher

#each student can have many teachers
#each teacher has many students

#each teacher can have many classrooms
#each classroom belongs to a teacher

#each student can have many classrooms
#each classroom belongs to a student