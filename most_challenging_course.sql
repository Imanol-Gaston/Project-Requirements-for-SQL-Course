SELECT
    Courses.CourseName,
    AVG(Grades.Grade) AS AverageGrade
FROM Courses
LEFT JOIN Grades ON Courses.CourseID = Grades.CourseID
GROUP BY Courses.CourseName
ORDER BY AverageGrade;
