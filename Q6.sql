--Q#6
SELECT top 5 (employee.E_ID),PERSON.P_Name, SUM(SERVICE_RECORD.Hours) AS total_hours
FROM employee
INNER JOIN SERVICE_RECORD ON employee.E_ID = SERVICE_RECORD.Service_Id
JOIN PERSON on EMPLOYEE.E_Ssn = PERSON.P_Ssn
GROUP BY employee.E_ID,PERSON.P_Name
ORDER BY total_hours DESC;