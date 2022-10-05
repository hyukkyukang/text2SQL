*****************************************************
CPE 365                                 Alex Dekhtyar
Cal Poly		  Computer Science Department
San Luis Obispo                College of Engineering 
California                   dekhtyar@csc.calpoly.edu   
*****************************************************
		 WINE DATASET
                   Version 1.0
                March 27, 2011
************************************************************
Sources:  This dataset contains wine ratings from a
          collection of 2007-2011 Wine Spectator magazines 

************************************************************

This file describes the contents of the WINE dataset
developed for the CPE 365, Introduction to Databases,
course at Cal Poly.

The dataset contains information about the ratings of a variety of
wines produced in California. The ratings were published
in a number of issues of the Wine Spectator magazine.  Version 1.0
of the dataset includes only the wines produced out of a single grape
and only the wines produced in the state of California.


General Conventions.

 1. All files in the dataset are CSV (comma-separated values) files.
 2. First line of each file provides the names of
    columns. Second line may be empty, or may contain
    the first row of the data.
 3. All string values are enclosed in single quotes (')


  The dataset consists of the following files:

     - appelations.csv  : list of appelations/American Viticultural Areas (AVAs)
     - grapes.csv       : list of grape varieties
     - wine.csv         : list of wines and their ratings


 Individual files have the following formats.

**************************************************************************

appelations.csv

          No : line number in the CSV file  
   Appelation: name of the appelation/AVA/grape-growing region
       County: county (if applicable) in which the area is located
        State: state in which the area is located
         Area: general geographic area in which the grape-growing region is located
        isAVA: a flag specifying whether the region is recognized as an American
               Viticultural Area (AVA) by federal regulations.

Notes: "Appelation" is a general term for geographic grape origins in a wine.
       Grape origins are always listed on wine labels. 
       In the US, appropriate origins are either AVAs (American Viticultural Areas)
       or counties, in which the grapes were grown. Most AVAs respect geographical
       boundaries (state, county, so on), but some - do not. 
       In the dataset, some AVAs shown as located in a single county are actually
       located in multiple counties (we chose the "main" county of location).
       This is done to simplify the dataset. Other AVAs transcend county borders
       in ways that make county attribution meaningless. The value 'N/a' is used
       in such cases.  General geographic areas, as they are currently used
       are subregions of a single state. 

**************************************************************************

grapes.csv

     ID: unique identifier of a grape (line number in the CSV file)
  Grape: name of the grape varietal
  Color: color of the grape (a.k.a, color of the wine when made solely of
         this grape)

**************************************************************************

wine.csv

       No.: unique identifier of the wine (line number in the CSV file)
     Grape: grape varietal from which the wine is made (see grapes.Grape)
    Winery: maker of the wine (usually a winery name)
Appelation: origin of the grapes (see applations.Appelation)
     State: state of the grapes' origin (same as appelations.State)
      Name: name of the wine
      Year: year of the wine vintage
     Price: price of one bottle of wine in (whole) US dollars
     Score: Wine Spectator magazine rating of the wine on the 100 point scale
     Cases: number of cases of the wine produced by its maker
     Drink: drinking advice

Notes: only wines produced from a single grape are included in the dataset (no blends).
All wines in the dataset are from California. Drinking advice is simplified. Either
the field contains the value 'now' which means that wine can be enjoyed to its fullest
potential at the moment it was rated by the Wine Spectator magazine, or
it contains a year in which the wine is predicted to reach its full potential.
Wine name is either a special name given to the wine by its makers and found on
the label, or is the name of the grape varietal.

**************************************************************************
**************************************************************************

Permission granted to use and distribute this dataset in its current form, 
provided this file  is kept unchanged and is distributed together with the 
data.

**************************************************************************
**************************************************************************
