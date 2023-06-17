CREATE TABLE travels (
	travel_id INT NOT NULL,
    id INT,
    dest_id INT,
    departure TIME,
    arrival TIME,
    distance CHAR(255),
    fare INT,
    PRIMARY KEY (travel_id),
    FOREIGN KEY (id) REFERENCES source_station(id),
    FOREIGN KEY (dest_id) REFERENCES destination_stations(dest_id)
)