--Q#22
SELECT EMPLOYEE.E_Shift,AVG(EMPLOYEE.Salary) as Average_Employees
from EMPLOYEE
group by EMPLOYEE.E_Shift;