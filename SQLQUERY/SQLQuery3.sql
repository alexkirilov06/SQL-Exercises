USE SoftUni
--1. ����� �� ��������
SELECT TOP 5 e.EmployeeID,e.JobTitle, a.AddressID,a.AddressText
FROM Employees e
JOIN Addresses a ON e.AddressID=a.AddressID
ORDER BY a.AddressID;