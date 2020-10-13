SELECT TailNum, sum(Distance) as totalDistance from Flights GROUP BY TailNum ORDER by totalDistance DESC

