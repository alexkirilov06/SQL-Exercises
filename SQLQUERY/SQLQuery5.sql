USE SoftUni
--3. Служители без проекти
SELECT TOP 3 e.EmployeeID, e.FirstName
FROM Employees e
WHERE e.EmployeeID NOT IN(SELECT ep.EmployeeID FROM EmployeesProjects ep)
ORDER BY e.EmployeeID;

SELECT TOP 3 e.EmployeeID,e.FirstName
FROM Employees e
LEFT JOIN EmployeesProjects ep
ON ep.EmployeeID = e.EmployeeID
WHERE ep.ProjectID IS NULL
ORDER BY e.EmployeeID