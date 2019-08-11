class Doctor
@@all_docs =[]
attr_accessor :name, :specialty, :college, :cost

    def initialize(doc_specs)
        @name = doc_specs[:name]
        @specialty = doc_specs[:specialty]
        @college = doc_specs[:college]
        @cost = doc_specs[:cost]
    end

    def add_patient(patient, cost)
        Appointments.new({self, patient, cost})
    end

    #doctor wants to return all patients that have paid over $1000 for an appointment 
    def rich_patient
        Appointments.all.select do |appointment|
            if appointment.cost > 1000
                patient.name
            end
        end
    end
end
