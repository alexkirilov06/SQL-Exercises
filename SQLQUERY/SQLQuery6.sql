USE SoftUni
--4. Служители с проекти
SELECT TOP 5e.EmployeeID, e.FirstName,p.Name AS [ProjectName]
FROM Employees e
JOIN EmployeesProjects ep ON e.EmployeeID=ep.EmployeeID
JOIN Projects p 
ON p.ProjectID =ep.ProjectID
--WHERE p.EndDate IS NULL AND CONVERT(VARCHAR, p.StartDate, 103)>'13.08.2002'
WHERE p.StartDate > '08-13-2002'
AND p.EndDate IS NULL
ORDER BY e.EmployeeID;
