require_relative "lib/doctor.rb"
require_relative "lib/patient.rb"
require_relative "lib/appointment.rb"


doctor1 = Doctor.new({name: 'Alec', degree: 'MD'})
doctor2 = Doctor.new({name: 'Jerry', degree: 'BS'})

patient1 = Patient.new({name: 'Tom', age: 23, gender:'male'})