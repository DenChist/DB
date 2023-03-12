SELECT id_exam, id_student, grade
FROM studentsperformance.grades
ORDER BY id_exam, grade;

SELECT id_exam, AVG(grade) AS AVG_grade
FROM studentsperformance.grades
GROUP BY id_exam
ORDER BY AVG_grade;