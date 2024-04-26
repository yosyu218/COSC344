drop table if exists patientConditions;
drop table if exists procedures;	
drop table if exists consultations;
drop table if exists patient;
drop table if exists Schedule;
drop table if exists Dental_staff;
Create table patient(
patient_id varchar(15),
Firstname varchar(100) not null,
Lastname varchar(100) not null,
Address varchar(200) not null,
Email varchar(100),
Phone Varchar(50) not null,
gender varchar(50),
DateOfBirth DATE not null,
primary key(patient_id)
);

create table patientConditions(
patient_id varchar(15),
condition_name varchar(50),
primary key(patient_id, condition_name),
Foreign key(patient_id) references patient(patient_id)
-- Foreign key(condition_id) references conditions(condition_id)
);

-- create table conditions(
-- condition_id varchar(15),
-- conditions_name varchar(100) not null,
-- notes varchar(200),
-- primary key(condition_id)
-- )
create table Dental_staff(
staff_id varchar(15),
Firstname varchar(100) not null,
Lastname varchar(100) not null,
Address varchar(200) not null,
email varchar(200) not null,
Date_hired Date not null,
Position varchar(100) not null,
IRD_Number varchar(15) unique,
primary key(staff_id)
);

CREATE TABLE consultations (
    consultations_id VARCHAR(20),
    consultation_date DATE NOT NULL,
    start_Time TIME NOT NULL,
    end_Time TIME NOT NULL,
    notes VARCHAR(500),
    payment_Status VARCHAR(100) CHECK (payment_Status IN ('paid', 'not paid')),
    Due_Date Date not null,
    Patient_id varchar(15) not null,
    staff_id varchar(15) not null,
    PRIMARY KEY (consultations_id),
	FOREIGN KEY (Patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

Create table Schedule(
Procedure_code varchar(20),
Description varchar(500) not null,
Unit_Type varchar(100) not null,
Unit_cost decimal(10,2) not null,
primary key(procedure_code)
);
create table procedures(
    consultations_id VARCHAR(20),
    Procedure_code varchar(20),
    Quantity INT not null,
    primary key(consultations_id, Procedure_code),
    FOREIGN KEY (Procedure_code) REFERENCES Schedule(Procedure_code),
        FOREIGN KEY (consultations_id) REFERENCES consultations(consultations_id)
);
-- Mock data for patient table
INSERT INTO patient (patient_id, Firstname, Lastname, Address, Email, Phone, gender, DateOfBirth) 
VALUES 
('P001', 'John', 'Doe', '123 Main St', 'john.doe@example.com', '123-456-7890', 'Male', '1990-05-15'),
('P002', 'Jane', 'Smith', '456 Oak St', 'jane.smith@example.com', '987-654-3210', 'Female', '1985-10-20');

-- Mock data for patientConditions table
INSERT INTO patientConditions (patient_id, condition_name) 
VALUES 
('P001', 'Diabetes'),
('P001', 'Hypertension'),
('P002', 'Asthma');

-- Mock data for Dental_staff table
INSERT INTO Dental_staff (staff_id, Firstname, Lastname, Address, email, Date_hired, Position, IRD_Number) 
VALUES 
('S001', 'Michael', 'Johnson', '789 Elm St', 'michael.johnson@example.com', '2018-03-10', 'Dentist', '123-456-789'),
('S002', 'Emily', 'Williams', '987 Pine St', 'emily.williams@example.com', '2019-01-15', 'Dental Assistant', '987-654-321');

-- Mock data for consultations table
INSERT INTO consultations (consultations_id, consultation_date, start_Time, end_Time, notes, payment_Status, Due_Date, Patient_id, staff_id) 
VALUES 
('C001', '2024-04-26', '10:00:00', '11:00:00', 'Routine checkup', 'paid', '2024-04-26', 'P001', 'S001'),
('C002', '2024-04-27', '14:00:00', '15:00:00', 'Tooth extraction', 'not paid', '2024-04-27', 'P002', 'S002');

-- Mock data for Schedule table
INSERT INTO Schedule (Procedure_code, Description, Unit_Type, Unit_cost) 
VALUES 
('P001', 'Dental cleaning', 'Hour', 150.00),
('P002', 'Tooth extraction', 'Procedure', 300.00);

-- Mock data for procedures table
INSERT INTO procedures (consultations_id, Procedure_code, Quantity) 
VALUES 
('C001', 'P001', 1),
('C002', 'P002', 1);

-- Select statement for the patient table:
SELECT * FROM patient;

-- Select statement for the patientConditions table:
SELECT * FROM patientConditions;

-- Select statement for the Dental_staff table:
SELECT * FROM Dental_staff;

-- Select statement for the consultations table:
SELECT * FROM consultations;

-- Select statement for the Schedule table:
SELECT * FROM Schedule;

-- Select statement for the procedures table:
SELECT * FROM procedures;

