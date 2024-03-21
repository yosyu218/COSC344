# COSC344

Assignemnt 1 Dynamite Dentists

Yuki Yoshiyasu & Leon Chen

Points to consider

- clearly state and justify any assumptions or design decisions
- ERD(must be tidy, well-organised, and unambiguous)
- Attributes (not null)
- Relationships (inc weak entities)
- Supertypes/Subtypes

Dynamite dentists

- [ ]  Name and ID of all participants
- [ ]  Conceptual level Entity-relationship diagram (ERD)
- [ ]  clearly state and justify any assumptions or design decisions
- [ ]  Document the domains of all attributes
- [ ]  Section documenting the contribution of both members

Entities

- Patient(patientID, name, address, email(optional), phone_num, gender, DOB, AGE>18,  health_cond, Allergies,)
- staff(staffID, name, address, email, phone_num, position, dateofemployment, IRDnum,)
- Appointments/Bookings (timedate, location, notes)
- Procedure(code, description, quantity, grams,timedate,cost, gst)
- Schedule?
