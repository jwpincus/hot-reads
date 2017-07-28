

## This is an app that tracks the hotness of links read on the linkbox app
+ See it live [here](https://mighty-ocean-52812.herokuapp.com/)

## Setup

+ this app is configured to run on a Postgres DB. If you do not have a PG server running, you will need to set that up.
+ Clone down the repo
+ run `bundle`
+ run `rake db:create`

## Testing
+ run 'rspec'

## Endpoints
+ POST to /api/v1/reads body should include json: {"URL": "your_url"}
+ GET to /api/v1/reads body should include json: {"URL": "your_url"}
+ The POST endpoint will find a link and register a new read, or if it is a new link, will create it and register a read.
+ The GET endpoint will show whether a given URL is in the top 10 most read for the past 24 hours.

## Development

+ The App is setup around two models: Links and Reads.
+ A Link record is created for each unique URL that is ingested through the API POST endpoint.
+ A Read record is created for each URL (unique or not) that is ingested through the POST endpoint
+ The GET endpoint will return whether the URL is in the top 10 most read links in the past 24 hours.

## Link Box app  

+ This app is a hotness tracking service that serves the [Link Box app.](https://safe-beach-18611.herokuapp.com/)
