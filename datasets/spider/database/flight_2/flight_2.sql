CREATE TABLE 'airlines' (
	uid INTEGER PRIMARY KEY, 
	Airline TEXT, 
	Abbreviation TEXT, 
	Country TEXT
);
CREATE TABLE 'airports' (
	City TEXT, 
	AirportCode TEXT PRIMARY KEY, 
	AirportName TEXT, 
	Country TEXT, 
	CountryAbbrev TEXT
);
CREATE TABLE 'flights' (
	Airline INTEGER, 
	FlightNo INTEGER, 
	SourceAirport TEXT, 
	DestAirport TEXT, 
	PRIMARY KEY(Airline, FlightNo),
	FOREIGN KEY (SourceAirport) REFERENCES airports(AirportCode),
	FOREIGN KEY (DestAirport) REFERENCES airports(AirportCode)
);
