SELECT id_student, id_exam, grade,
    (SELECT AVG(grade) FROM studentsperformance.grades as SubGrades
    WHERE SubGrades.id_exam = AllGrades.id_exam) AS AVG_grade
FROM studentsperformance.grades as AllGrades
WHERE grade > 
    (SELECT AVG(grade) FROM studentsperformance.grades as SubGrades
    WHERE SubGrades.id_exam = AllGrades.id_exam);