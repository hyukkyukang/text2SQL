*****************************************************
CPE 365                                 Alex Dekhtyar
Cal Poly		  Computer Science Department
San Luis Obispo                College of Engineering 
California                       dekhtyar@calpoly.edu   
*****************************************************
		   INN DATASET
                   Version 1.0
                  April 6, 2011
*****************************************************
Sources:  this is a synthesized dataset. 

******************************************************

This file describes the contents of the INN dataset
developed for the CPE 365, Introduction to Databases,
course at Cal Poly.

The dataset contains information a one year worth of reservations
at a fictional Bed & Breakfast hotel called Seaside Grove Inn.
The hotel has 10 rooms. The dataset contains information about
the completed (i.e., guests arrived and stayed) reservations for
one year of the hotel's operation.

General Conventions.

 1. All files in the dataset are CSV (comma-separated values) files.
 2. First line of each file provides the names of
    columns. Second line may be empty, or may contain
    the first row of the data.
 3. All string values are enclosed in single quotes (')


  The dataset consists of the following files:

     - Rooms.csv        : list of Seaside Grove Inn rooms
     - Reservations.csv : list of completed room reservations


 Individual files have the following formats.

**************************************************************************

Rooms.csv

       RoomId : a three-letter unique Id code of a room
    roomName  : official name of the room (all rooms in B&B inns 
                   typically have names)
         beds : number of beds in the room
      bedType : type of the bed(s) in the room. All beds in each room
                are of the same type.
 maxOccupancy : maximum number of people allowed to stay in the room
    basePrice : base price (in US dollars) of one night of stay in the room.
        decor : decoration style of the room

**************************************************************************

Reservations.csv

        Code : reservation code  
        Room : the three-letter room code (see Rooms.RoomId)
     CheckIn : date of check-in/arrival
    CheckOut : date of check-out/departure
        Rate : actual nightly rate. Each night of stay on one reservation
               always costs the same amount, although rates may vary
               for the same room from one reservation to another
    LastName : last name of the person who made the reservation
   FirstName : first name of the person who made the reservation
      Adults : number of adults (18 and above) staying in the room. Each 
               reservation must have at least one adult
        Kids : number of kids (ages 0-17) staying in the room.

**************************************************************************
**************************************************************************

Permission granted to use and distribute this dataset in its current form, 
provided this file  is kept unchanged and is distributed together with the 
data.

Permission granted to modify and expand this dataset, provided this
file is updated accordingly with new information.

Acknowledgements. We thank Dr. Clint Staley for the software script that
produced the names of the rooms.

**************************************************************************
**************************************************************************
