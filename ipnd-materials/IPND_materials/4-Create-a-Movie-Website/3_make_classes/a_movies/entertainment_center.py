# Lesson 3.4: Make Classes
# Mini-Project: Movies Website

# In this file, you will define instances of the class Movie defined
# in media.py. After you follow along with Kunal, make some instances
# of your own!

# After you run this code, open the file fresh_tomatoes.html to
# see your webpage!

import media
import fresh_tomatoes

avengers = media.Movie("Avengers: Infinity Wars", "Why didn't it end this way!?!?!?!", "https://upload.wikimedia.org/wikipedia/en/4/4d/Avengers_Infinity_War_poster.jpg", "https://youtu.be/NcEbZ_vexA8?t=1m10s")

lotr = media.Movie("Lord of the Rings", "That's what I've thought ever since I read this as a kid!!!", "https://upload.wikimedia.org/wikipedia/en/9/9d/The_Lord_of_the_Rings_The_Fellowship_of_the_Ring_%282001%29_theatrical_poster.jpg", "https://youtu.be/1yqVD0swvWU")

starwars = media.movie ("Star Wars: Return of the Jedi", "You told me she died in childbirth!?", "https://en.wikipedia.org/wiki/Return_of_the_Jedi#/media/File:ReturnOfTheJediPoster1983.jpg", "https://youtu.be/zdukWtJwlPU?t=2m15s")



movies = [avengers, lotr, starwars]
fresh_tomatoes.open_movies_page(movies)
