*****************************************************
CPE 365                                 Alex Dekhtyar
Cal Poly		  Computer Science Department
San Luis Obispo                College of Engineering 
California                   dekhtyar@csc.calpoly.edu   
*****************************************************
		 AIRLINES DATASET
                   Version 1.0
                November 19, 2007
*****************************************************
Sources:  the list of US airports is from 
          http://www.world-airport-codes.com/
          
          the list of airlines is from http://www.wikipedia.org
          
          the list of flights is synthesized.

******************************************************

This file describes the contents of the AIRLINES dataset
developed for the CPE 365, Introduction to Databases,
course at Cal Poly.

The dataset contains information about some US airlines and
airports, and routes flown by the airlines between these airports.

General Conventions.

 1. All files in the dataset are CSV (comma-separated values) files.
 2. First line of each file provides the names of
    columns. Second line may be empty, or may contain
    the first row of the data.
 3. All string values are enclosed in single quotes (')
 4. All string values in the airports.csv and flights.csv files 
    have a trailing space.This is important to note, because 
    one of the string   columns, airport code is the unique identifier 
    of the airport. This issue needs to be dealt with programmatically.


  The dataset consists of the following files:


     - airlines.csv      : list of airlines
     - airports100.csv   : list of airports
     - flights.csv       : list of flights


 Individual files have the following formats.

**************************************************************************

airlines.csv
    
          Id   : unique identifier of the airline
       Airline : full name of the airline
  Abbreviation : abbreviated name of the airline
       Country : country of the airline



**************************************************************************

airports100.csv
 
        City  : location of the airport
  AirportCode : unique three-letter airport code
  AirportName : name of the airport
      Country : country of the airport
CountryAbbrev : abbreviation of the country



**************************************************************************

flights.csv

      Airline : airline that manages the flight
     FlightNo : flight number (unique for each airline, may repeat
                for different airlines)
SourceAirport : Code for the airport from which the flight originates
                (see airports100.AirportCode)
  DestAirport : Code for the airport at which the flight terminates

**************************************************************************
**************************************************************************

Permission granted to use and distribute this dataset in its current form, 
provided this file  is kept unchanged and is distributed together with the 
data.

Permission granted to modify and expand this dataset, provided this
file is updated accordingly with new information.

**************************************************************************
**************************************************************************

