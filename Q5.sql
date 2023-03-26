--Q#5
SELECT AVG(E.Salary) as AVG_Employee_Salary
FROM EMPLOYEE E
WHERE E.E_Shift = 'Night';