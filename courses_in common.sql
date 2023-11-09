SELECT
    Students.FirstName AS StudentFirstName,
    Students.LastName AS StudentLastName,
    Professors.FirstName AS ProfessorFirstName,
    Professors.LastName AS ProfessorLastName,
    COUNT(*) AS CommonCourses
FROM Students
JOIN Grades ON Students.StudentID = Grades.StudentID
JOIN Professors ON Grades.ProfessorID = Professors.ProfessorID
GROUP BY Students.StudentID, Professors.ProfessorID
ORDER BY CommonCourses DESC
LIMIT 1;
