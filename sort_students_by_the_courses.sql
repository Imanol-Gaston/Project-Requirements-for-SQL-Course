SELECT
    Students.FirstName AS StudentFirstName,
    Students.LastName AS StudentLastName,
    Courses.CourseName
FROM Students
JOIN Grades ON Students.StudentID = Grades.StudentID
JOIN Courses ON Grades.CourseID = Courses.CourseID
ORDER BY Students.LastName, Students.FirstName, Courses.CourseName;
