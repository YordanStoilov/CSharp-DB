
DELETE FROM TrainsRailwayStations
WHERE TrainId = 7

DELETE FROM MaintenanceRecords
WHERE TrainId = 7

DELETE FROM Tickets
WHERE TrainId = 7

DELETE FROM Trains
WHERE DepartureTownId = 3
