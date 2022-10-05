*****************************************************
CPE 365                                 Alex Dekhtyar
Cal Poly		  Computer Science Department
San Luis Obispo                College of Engineering 
California                   dekhtyar@csc.calpoly.edu   
*****************************************************
		   CARS DATASET
                   Version 1.0
                September 26, 2007
*****************************************************
Sources:
         The Committee on Statistical Graphics of 
         the American  Statistical Association (ASA)  
         1983 Cars dataset
         available (among other places) from
         CMU's StatLib server: 
                  http://lib.stat.cmu.edu/datasets/

******************************************************


This file describes the contents of the CARS dataset
developed for the CPE 365, Introduction to Databases
course at Cal Poly.

The dataset is a normalized and slightly enhanced version
of the ASA's Committee on Statistical Graphics "cars" 
dataset offered in 1983 for the visualization competition.
Please refer to the original dataset description
in the file "cars.desc" included with this distribution for
historical purposes. (please, note, cars.desc file does not
describe the format of this dataset  correctly).


The dataset describes the origins and different parameters
of 406 car models produced in the world between 1970 and 1982.
The dataset consists of the following files:

General Conventions.

 1. All files in the dataset are CSV (comma-separated values) files.
 2. First line of each file provides the names of
    columns. Second line may be empty, or may contain
    the first row of the data
 3. All string values are enclosed in single quotes (')

  - car-makers.csv  : information about companies that produce cars
  - car-names.csv  : information about specific cars (by name)
  - cars-data.csv  : operational parameters of the cars
  - continents.csv : list of continents
  - countries.csv  : list of countries 
  - model-list.csv : information about car models produced by car makers


The core of the dataset consists of four files: car-makes.csv, model-list.csv,
car-names.csv and cars-data.csv.  The first file identifies companies
that produce cars (e.g, "Ford Motor Company", "Toyota"), the second file
lists various models and identified their makes (e.g., "Ford" and "Mercury" 
produced by Ford, "Oldsmobile" and "Chevrolet" produced by GM). The third
file is the masterlist of 406 car makes considered in the database
(e.g., "ford torino" or "amc rebel set"). The fourth file contains information
about the operating parameters (see below for a full list) for each make.


Individual files have the following formats.


**************************************************************************

car-makers.csv

          Id : unique identifier of the car maker
       Maker : short nickname for the car maker
    FullName : full name of the car maker
     Country : Id of the home country of the maker (see countries.CountryId)



**************************************************************************

car-names.csv

          MakeId : unique identifier of the car make 
           Model : unique name of the car model (see model-list.Model)
 MakeDescription : description (name) of the car make



**************************************************************************


cars-data.csv

            Id : unique identifier of the car make (see car-names.MakeId)
           MPG : milage per gallon
     Cylinders : number of cylinders
        Edispl : engine displacement volume in cubic inches
    Horsepower : power of the engine in horsepowers
        Weight : weight of the car in lbs
    Accelerate : time to accelerate from 0 to 60mph in seconds (possibly
		 with fractions of a second)
          Year : year the car was made


NOTE: this file adds the Id attribute to the original cars.data file from
       the ASA cars dataset, removes the Origin attribute (the origin is
       now dealt with elsewhere), and modifies year to be the actual year
       rather than "year - 1900".



**************************************************************************


continents.csv
 
        ContId : unique identifier of the continent
     Continent : name of the continent


**************************************************************************

countries.csv

     CountryId : unique identifier of the country
   CountryName : name of the country
     Continent : unique identifier of the continent the country is on 
                 (see continents.ContId)


**************************************************************************

model-list.csv

    ModelId : unique identifier of the car model
      Maker : unique identifier of the car maker (see car-makers.id)
      Model : name of the car model (also unique)



**************************************************************************
**************************************************************************







