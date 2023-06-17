SELECT s.station_name As source, d.station_name as destination, fare FROM travels 
join destination_stations d
     ON travel_id = d.dest_id    
 join source_station s
 	 on travel_id = s.id