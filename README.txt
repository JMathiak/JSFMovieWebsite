	

	Project Description:
		This project simulates a website to purchase tickets based off an entered zipcode, that is valid (5 digits long and in the database). 
		Based off the entered zipcode a list of theaters is shown and then a set of movies is shown for the selected theater. The user can then 
		pick a show time for the selected movie, pick an amount of tickets to purchase, and enter a valid credit card number (16 numbers long) to 
		complete the purchase. 
	Beans:
	mainPageBean:
		Contains the zipcode validation method to use on mainPage. 
	getMovieTheaters:
		Used to get the list of theaters for the selected zipcode. Used with the mainPage page to go to the Theaters page. 
	showMoviesBean:
		Contains methods that:
			-Gets a list of movies for the selected theaters
			-Sets a single movie object as the selected movie
			-Gets a list of movie times for the selected movie
			-Sets a single instance of a movie time for the selected movie time
			-Calculates the price for the entered number of tickets
			-Validates the entered credit card for length 
	EJB:
	movieDBEJB:
		Contains methods that uses named queries to get lists/single results for use throughout the website. 
	
	Entities:
	Movies:
		Entity class for the Movie databse.
	Movietimes:
		Entity class for the Movietimes database.
	Theaters:
		Entity class for the Theaters database. 
	
	Pages:
	mainPage:
		Asks the user to enter a zipcode. The zipcode is required and is validated. 
	Theaters:
		Shows a list of theaters for the user to select based off the zipcode entered on the mainpage. 
	ShowMovies:
		Shows a list of movies for the user to view based off the selected theater from the Theaters page.
	MovieInfo:
		Displays the info for the selected movie from the ShowMovies page. The user can return to the list of movies
		or proceed to a list of showtimes for the movie.
	Showings:
		Displays a list of show times for the selected movie. The user can select a show time, return to the main page,return to the movie description, 
		or return to the list of movies. 
	SelectTickets:
		Asks the user to enter a number of tickets they want to purchase. Allows for backwards transversal of the website.
	Payment:
		Asks the user for the credit card number for payment. The number must be validated and is required. Allows for backwards transversal.
	Thanks:
		Displays a thank you message and allows the user to return to the main page to go through the website again to purchase more tickets. 
	
	