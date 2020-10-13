SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades FROM Flights GROUP BY Origin, colYear, colMonth ORDER BY Flights.Origin ASC



