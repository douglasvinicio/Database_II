-- INNER JOIN 
SELECT SportTeams.TeamID,TeamName,Goals,Points
FROM SportTeams
INNER JOIN SportGoals
ON SportTeams.TeamID = SportGoals.TeamID
ORDER BY TeamID