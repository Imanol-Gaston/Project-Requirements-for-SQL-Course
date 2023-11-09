-- Crear una nueva base de datos
CREATE DATABASE IF NOT EXISTS UniversityDB;

-- Usar la base de datos UniversityDB
USE UniversityDB;

-- Crear la tabla Students
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Gender ENUM('Male', 'Female', 'Other'),
    Email VARCHAR(100) UNIQUE
);

-- Crear la tabla Courses
CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseCode VARCHAR(10) UNIQUE,
    CourseName VARCHAR(100),
    Department VARCHAR(50)
);

-- Crear la tabla Professors
CREATE TABLE Professors (
    ProfessorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);

-- Crear la tabla Grades con el campo "Grade" de tipo INT
CREATE TABLE Grades (
    GradeID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    ProfessorID INT,
    Grade INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID)
);

-- Insertar 10 registros de ejemplo en la tabla Students
INSERT INTO Students (FirstName, LastName, BirthDate, Gender, Email)
VALUES
    ('John', 'Doe', '2000-01-15', 'Male', 'john@example.com'),
    ('Jane', 'Smith', '1999-03-20', 'Female', 'jane@example.com'),
    ('Michael', 'Johnson', '2001-05-10', 'Male', 'michael@example.com'),
    ('Emily', 'Williams', '2002-02-28', 'Female', 'emily@example.com'),
    ('David', 'Brown', '2000-08-12', 'Male', 'david@example.com'),
    ('Sarah', 'Wilson', '1999-11-04', 'Female', 'sarah@example.com'),
    ('Daniel', 'Lee', '2001-06-15', 'Male', 'daniel@example.com'),
    ('Olivia', 'Clark', '2000-09-09', 'Female', 'olivia@example.com'),
    ('William', 'Hall', '2002-03-25', 'Male', 'william@example.com'),
    ('Ava', 'Martin', '1999-07-31', 'Female', 'ava@example.com');

-- Insertar 10 registros de ejemplo en la tabla Courses
INSERT INTO Courses (CourseCode, CourseName, Department)
VALUES
    ('CSCI101', 'Introduction to Computer Science', 'Computer Science'),
    ('MATH201', 'Calculus I', 'Mathematics'),
    ('CHEM101', 'General Chemistry', 'Chemistry'),
    ('PHYS101', 'Physics for Beginners', 'Physics'),
    ('HIST202', 'World History II', 'History'),
    ('ENG101', 'English Composition', 'English'),
    ('ART105', 'Introduction to Art', 'Art'),
    ('PSYCH101', 'Introduction to Psychology', 'Psychology'),
    ('BIOL102', 'Biology Lab', 'Biology'),
    ('MUSIC110', 'Music Appreciation', 'Music');

-- Insertar 10 registros de ejemplo en la tabla Professors
INSERT INTO Professors (FirstName, LastName, Department, Email)
VALUES
    ('Robert', 'Johnson', 'Computer Science', 'robert@example.com'),
    ('Mary', 'Smith', 'Mathematics', 'mary@example.com'),
    ('Jennifer', 'Brown', 'Chemistry', 'jennifer@example.com'),
    ('William', 'Davis', 'Physics', 'william@example.com'),
    ('Laura', 'Wilson', 'History', 'laura@example.com'),
    ('Christopher', 'Clark', 'English', 'christopher@example.com'),
    ('Sarah', 'Adams', 'Art', 'sarah@example.com'),
    ('David', 'Miller', 'Psychology', 'david@example.com'),
    ('Elizabeth', 'Garcia', 'Biology', 'elizabeth@example.com'),
    ('Michael', 'Lee', 'Music', 'michael@example.com');

-- Insertar 10 registros de ejemplo en la tabla Grades
INSERT INTO Grades (StudentID, CourseID, ProfessorID, Grade)
VALUES
    (1, 1, 1, 85),
    (2, 1, 1, 78),
    (3, 2, 2, 92),
    (4, 2, 2, 86),
    (5, 3, 3, 75),
    (6, 3, 3, 67),
    (7, 4, 4, 89),
    (8, 4, 4, 74),
    (9, 5, 5, 95),
    (10, 5, 5, 81);
