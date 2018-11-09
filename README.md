# README

## Prerequisites
 Ruby version 2.5.1

 Rails version 5.2.1

## Launch

Heroku Link: [graffiti_removal_requests](https://graffitireporter.herokuapp.com/)

To launch locally, run the following commands in your terminal:

```
git clone https://github.com/Heybluguy/graffiti_reporter.git
cd graffiti_reporter
bundle
rails db:create
rails db:migrate
rails s
```
Open your browser and visit `localhost:3000` and interact with the interface.

# Graffiti Reporter:

Residents of Chicago can request graffiti removal through 311. Your task is to build a tool for reporting on graffiti removal requests by ward and month. Your tool should interact with the City of Chicago’s data API to retrieve the information needed.

## Requirements
Your tool should take the following inputs:
* the last name of an alderman
* a month and year on which to report
Your report should return the following information:
* the full name of the alderman
* the ward number
* the month and year covered by the report
* the total number of graffiti removal requests for the ward for the month

Your tool should provide either a command-line interface or a JSON web service for receiving user input and providing the report. Do not use static data files to build the report. Your tool should interact with the city of Chicago’s data API.

## City of Chicago’s API descriptions
The data sets to use for this coding challenge are Chicago's graffiti removal request data set and ward offices data set.

Graffiti removal requests data set API description:
https://dev.socrata.com/foundry/data.cityofchicago.org/cdmx-wzbz
Ward offices data set API description:
https://dev.socrata.com/foundry/data.cityofchicago.org/7ia9-ayc2


## Optional Extensions
If you would like to go beyond the basic requirements, consider adding one or more of the following extensions to your tool:
the ability to specify the location of the graffiti (garage and the front of a building are two examples of locations) or the type of surface on which the graffiti is found
example locations: garage, front of a building
example surface types: brick, stucco
the ability to compare the number of graffiti removal requests for two different months for the same ward
the ability to compare the number of graffiti removal requests for two different wards in the same month
the ability to report on how promptly, on average, the city responded to graffiti removal requests during a given month
a UI to run in a browser

