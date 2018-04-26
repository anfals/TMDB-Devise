# README
Title: The Movie House

Team Members: Anfal Siddiqui, Nabeel Mamoon, Josh Zeitsoff, Clement Ng

Demo Link: https://youtu.be/HoJfB9taHSM

Idea: A movie forum where you can create pages for movies, pulling in info about the movie from the Movie Database API. Allows users to thumbs up and down movies. Also can recommend similar movies to users. 

Models and Description:

User
* has name, email
* has_many likes

Movie 
* Has title, poster, description
* Have many likes
* Has rating (likes/total)

Rating  
* Has boolean (thumbs up or down)
* belongs to user, belongs to movie (polymorphic)

Features:
* Users login 
* Users can create a page for a movie (data pulled from API) by searching using the search bar
* Users can thumbs up/thumbs down a movie
* Movies have score (ratings)
* Recommended movies will show up based off of user ratings, in conjunction with the API

Division of Labor:
* Anfal: Moviedb gem work, rating system, front-end
* Josh: Moviedb gem work, Recommendation system
* Clement: Devise gem work, front-end
* Nabeel: N/A


