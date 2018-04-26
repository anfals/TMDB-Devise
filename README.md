# README

SAMPLE WRITEUP

Title: The Movie House
Team Members: Anfal Siddiqui, Nabeel Mamoon, Josh Zeitsoff, Clement Ng
Demo Link: [upload the screencast]

Idea: Movie forum where you can create pages for movies, pulling in info about the movie from the Movie Database API. Allows users to have comment threads about movie and offer ratings. Also creates a scoreboard based off of user comments, likes/dislikes. 

Models and Description:
User
-has name, email
-has_many likes

Movie 
-Has title, poster, trailer, casting info
-Have many likes
-Has rating (likes/total)

Rating  
-Has boolean (thumbs up or down)
belongs to user, belongs to movie (polymorphic)

Features:
-Users login 
-Users can create a page for a movie (data pulled from API)
-Users can thumbs up/thumbs down a movie
-Movies have score (ratings)

Division of Labor:
-Anfal: Moviedb gem work, rating system, front-end
-Josh: Moviedb gem work, Recommendation system
-Clement: Devise gem work, front-end
-Nabeel: N/A


