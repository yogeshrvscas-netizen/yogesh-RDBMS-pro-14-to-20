USE CollegeDB;

DROP FUNCTION IF EXISTS CountStudentsByDepartment;

DELIMITER $$

CREATE FUNCTION CountStudentsByDepartment(
    p_department_id INT
)
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN

    DECLARE student_count INT;

    -- Count students belonging to the given department

    -- Return the count

END $$

DELIMITER ;

-- Test
SELECT CountStudentsByDepartment(1) AS StudentCount;
CREATE OR REPLACE FUNCTION count_students
(p_dept_id IN NUMBER)
RETURN NUMBER
IS
    total_students NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO total_students
    FROM Student
    WHERE DepartmentID = p_dept_id;

    RETURN total_students;
END;
/
DECLARE
    result NUMBER;
BEGIN
    result := count_students(101);
    DBMS_OUTPUT.PUT_LINE('Number of students: ' || result);
END;
/
