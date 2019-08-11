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


