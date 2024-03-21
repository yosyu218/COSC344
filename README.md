Project 1 Dynamite Dentists

Yuki Yoshiyasu & Leon Chen

# A1 Database design

Points to consider

- clearly state and justify any assumptions or design decisions
- ERD(must be tidy, well-organised, and unambiguous)
- Attributes (not null)
- Relationships (inc weak entities)
- Supertypes/Subtypes

Dynamite dentists

- [ ]  Name and ID of all participants
- [ ]  A list of the domains for every attribute as described above.
- [ ]  Conceptual level Entity-relationship diagram (ERD)
- [ ]  clearly state and justify any assumptions or design decisions
- [ ]  Document the domains of all attributes
- [ ]  Section documenting the contribution of both members

Entities

- Patient(patientID, name, address, email(optional), phone_num, gender, DOB, AGE<18,  health_cond, Allergies,)
- staff(staffID, name, address, email, phone_num, position, dateofemployment, IRDnum,)
- Bookings (booking_id,patient_id, staff_id, timedate, location, notes, procedure_id,)
- Procedure(procedure_id, description, quantity, grams,timedate,cost, gst)
- booking_procedures(booking_id, procedure_id)
- Schedule(booking_id, timedate, notes, bookings)
- Payments(booking_id, patientID, total_cost, daysinceoperation, pay boolean)
- cost_calculation(user, booking_id, age)

patient one to many bookings

staff one to many bookings (Assume only 1 dentist works on each booking)

bookings one to many booking_procedures

booking_procedure many to one procedure

schedule one to many bookings 

staff one to one schedule 

cost calculation one to many bookings

payment one to one cost calculation
