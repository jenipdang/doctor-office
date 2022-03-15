# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting physican/patient/appointment data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating physicians..."
jeni = Physician.create(name: "Jeni" title: "Ph.D", age: 37, email: "jeni@medfirst.com", phone: 123-456-7890, experience: 4)
matteo = Physician.create(name: "Matteo" title: "Ph.D", age: 30, email: "matteo@medfirst.com", phone: 123-456-7891, experience: 2)
matt = Physician.create(name: "Matt" title: "Ph.D", age: 35, email: "matt@medfirst.com", phone: 123-456-7893, experience: 2)
francis = Physician.create(name: "Francis" title: "Ph.D", age: 38, email: "francis@medfirst.com", phone: 123-456-7894, experience: 4)


puts "Creating patients..."
lindsay = Patient.create(name: "Lindsay Lohan", email: "lindsay@yahoo.com")
tina = Patient.create(name: "Tina Fey", email: "tina@gmail.com")
emma = Patient.create(name: "Emma Bunton", email: "emma@yahoo.com")
geri = Patient.create(name: "Geri Halliwell"email: "geri@yahoo.com")
melanie = Patient.create(name: "Melanie Brown", email: "melanie@yahoo.com")
mark = Patient.create(name: "Mark Chisholm", email: "mark@yahoo.com")
victoria = Patient.create(name: "Victoria Addams", email: "victoria@yahoo.com")

puts "Creating appointments..."
a1 = Appointment.create(physician_id: jeni.id, patient_id: lindsay.id, date: Mon Oct 10 2022 10:00 AM)
a2 = Appointment.create(physician_id: matteo.id, patient_id: tina.id , date: Tue Oct 19 2022 09:00 AM)
a3 = Appointment.create(physician_id: matt.id , patient_id: emma.id, date: Tue Oct 11 2022 11:00 AM)
a4 = Appointment.create(physician_id: francis.id, patient_id: geri.id, date: Wed Oct 12 2022 10:00 AM)
a5 = Appointment.create(physician_id: franics.id, patient_id: melanie.id, date: Thu Oct 13 2022 10:00 AM)
a6 = Appointment.create(physician_id: matteo.id, patient_id: mark.id, date: Thu Oct 13 2022 10:00 AM)
a7 = Appointment.create(physician_id: matt.id, patient_id: victoria.id, date: Tue Oct 11 2022 12:00 PM)

puts "Seeding done!"