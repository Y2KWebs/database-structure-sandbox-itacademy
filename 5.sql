SELECT UniqueCarrier,colYear,colMonth, SUM(Cancelled) as total FROM Flights GROUP BY colYear,colMonth ORDER BY total DESC

