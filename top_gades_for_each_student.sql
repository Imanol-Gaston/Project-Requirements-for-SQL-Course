SELECT
    Students.FirstName AS StudentFirstName,
    Students.LastName AS StudentLastName,
    MAX(Grades.Grade) AS TopGrade
FROM Students
JOIN Grades ON Students.StudentID = Grades.StudentID
GROUP BY Students.StudentID;
