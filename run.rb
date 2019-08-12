require_relative "lib/Appointment.rb"
require_relative "lib/Doctor.rb"
require_relative "lib/Patient.rb"

class Appointments
    @@all = []
    
        attr_accessor: :doctor, :patient, :time, :cost
    
        def initialize(appointment_info)
            @doctor = appointment_info[:doctor]
            @patient = appointment_info[:patient]
            @time = appointment_info[:time]
            @cost = appointment_info[:cost]
        end
    
        def self.all
            @@all
        end
    end

class Patient
    @@all_patients
        
        attr_accessor :name, :ailments, :income, :college
        
            def initialize(patient_specs)
                @name = patient_specs[:name]
                @ailments = patient_specs[:ailments]
                @income = patient_specs[:income]
                @@all << self
            end
        
            def affordable_docs
                Appointments.all.select do |appointment|
                    Appointments.cost < self.income
                end
            end
        
            #Following method returns all docs from the same college as patient
            def acceptable_docs
                Appointments.all.select do |appointment|
                    appointment.doctor.college == self.college
            end
        end

class Doctor
    @@all_docs =[]
        attr_accessor :name, :specialty, :college, :cost
            
            def initialize(doc_specs)
                @name = doc_specs[:name]
                @specialty = doc_specs[:specialty]
                @college = doc_specs[:college]
                @cost = doc_specs[:cost]
                @@all_docs << self
                end
            
            def add_patient(patient, cost)
                Appointments.new({self, patient, cost})
            end
        
            #doctor wants to return all patients that have paid over $1000 for an appointment 
            def rich_patient
                Appointments.all.select do |appointment|
                    if appointment.cost > 1000
                        appointment.patient.name
                    end
                end
            end
        end
    
patient1 = Patient.new({name: "Jason Beneducci", ailments: "Knee", income: 100000, college: "Michigan"})
patient2 = Patient.new({name: "Jared Beneducci", ailments: "Eyes", income: 50000, college: "Miami"}
doctor1 = Doctor.new({name: "Joe Beneducci", specialty: "Eyes", cost: 51000, college: "Michigan"})
doctor2 = Doctor.new({name: "Brian Kenez", specialty: "Knee", cost: 17500, college: "Miami"})
meeting1 = Appointment.new({doctor: "Joe Beneducci", patient: "Jared Beneducci", time: 17, cost: 51000})
meeting2 = Appointment.new({doctor: "Brian Kenez", patient: "Jason Beneducci", time: 13, cost: 17500})



