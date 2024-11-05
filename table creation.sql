-- Create Employees Table
CREATE TABLE Employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50)
);

-- Create Attendance Table with a foreign key reference to Employees table
CREATE TABLE Attendance (
    attendance_id NUMBER PRIMARY KEY,
    employee_id NUMBER REFERENCES Employees(employee_id),
    attendance_date DATE,
    status VARCHAR2(10) CHECK (status IN ('Present', 'Absent'))
);
