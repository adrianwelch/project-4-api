# WDI Project 4, April 2017

# Travelog

![alt text][logo]

[logo]: http://i.imgur.com/64iblN1.png

Travelog is a travel app, that allows users to add a trip and add legs within their trip. For each leg that is created, a marker is added to a Google map and polylines are used to join each leg together creating a route. Users can also get live flight information of each leg that is added. Google autocomplete, maps and Skyscanner API are used for this app.

Users are able to join other user's trips and also comment on their trips.

The app is built using Rails for the back-end, and Angular for the front end. Travelog is hosted on Heroku as separate apps:

[Rails API] (https://hidden-cliffs-83467.herokuapp.com/)

[Angular App] (https://pacific-woodland-54638.herokuapp.com/)

**Installation**

To run this app locally, install the node packages by typing npm i in the terminal. To install AngularJS dependencies, type bower install. Gulp is used and all tasks are contained within the 'tasks' folder.

**Technologies Used**

* Travelog is built using a Ruby on Rails API for the back-end and AngularJS Front-end consuming this API.
* A Postgresql database is used with ActiveRecord.
* AWS is used to allow users to upload images.
* HTTParty was used to make proxy requests to the APIs.
* AngularJS was used on the front end to direct the API data and render the views.
* UI Router is used in order to build the app with multiple pages.
* Authentication uses JWT with Satellizer and BCrypt.
* Google Maps API is used to display markers and polylines in maps and Autocomplete.
* Skyscanner API is used to get available flights for the selected leg.
* Bootstrap is used as css framework and styles were written in Sass.
* Gulp was used as taskrunner.

**The App**

Travelog consists of Four database tables in Rails: Trips, Legs, Users and Comments. Trips and Legs have full CRUD actions which are created by users. 

The user enters the location of their Leg within the Trip created using Google autocomplete. The location contains the Latitute and Longitude which is used to get flights to the leg using Skyscanner API. The user can get available flights by clicking on the marker on the map and clicking 'Take Me Here'. Available flights will appear on the page with live quotes.

Both apps, are fully authenticated, using JWT with Bcrypt for authentication and hashing passwords.

**Challenges**

Linking Google autocomplete to get available flights using Skyscanner API was very challenging because I had to work out how to grab the longitude and latitude of the location of the leg and use that as the destination of the skyscanner GET request.

Time was also a challenge. I had one week to complete this project and wanted to add functionality that would allow users to 'request' joining another user's trip instead of joining a trip without requesting. Unfortunately I didn't have time to work on this functionality.