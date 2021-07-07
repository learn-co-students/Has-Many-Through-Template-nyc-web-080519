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
    binding.pry
end
