SELECT USAirports.City, Flights.colYear, Flights.colMonth, AVG(Flights.ArrDelay) AS prom_arribades 
FROM Flights LEFT JOIN USAirports ON Flights.Origin = USAirports.IATA 
GROUP BY USAirports.City, Flights.colYear, Flights.colMonth
ORDER BY USAirports.City ASC


