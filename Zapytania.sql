/*guests who pay the most*/
SELECT TOP(5) 
g.FirstName, g.Surname, g.City, 
COUNT(b.BookingId) AS NumOfBookings,
SUM(bp.Price) AS SumOfAllTransactions
FROM Guests g
INNER JOIN Bookings b
ON g.PersonId = b.PersonId
INNER JOIN BookingPanel bp
ON b.PersonId = bp.BookingId
GROUP BY g.PersonId, g.FirstName, g.Surname, g.City
ORDER BY SUM(bp.Price) DESC

/*from which cities most visitors come */
SELECT TOP(3) 
g.City, 
COUNT(*) AS NumOfGuests
FROM Guests g
GROUP BY g.City
ORDER BY COUNT(*) DESC

/*the most popular room*/
SELECT TOP(5) 
r.RoomNumber, 
SUM(DATEDIFF(DAY, b.DateOfRegestration, s.DateOfCheckOut)) AS NumOfDays
FROM Rooms r
INNER JOIN Bookings b
ON r.RoomID = B.RoomId
INNER JOIN Specifications s
ON b.BookingId = s.BookingId
GROUP BY r.RoomID, r.RoomNumber
ORDER BY NumOfDays DESC

/*how many people visit our hotel in month*/
SELECT 
CONCAT(DATENAME(MONTH, b.DateOfRegestration),' ', YEAR(b.DateOfRegestration)) AS MonthAndYear,
COUNT(b.BookingId) AS NumOfVisits
FROM Bookings b
GROUP BY CONCAT(DATENAME(MONTH, b.DateOfRegestration),' ', YEAR(b.DateOfRegestration))
ORDER BY MonthAndYear