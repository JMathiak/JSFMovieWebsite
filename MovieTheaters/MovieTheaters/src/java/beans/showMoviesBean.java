/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import ejb.movieDBEJB;
import entity.Movies;
import entity.Movietimes;
import entity.Theaters;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.ValidatorException;

/**
 *
 * @author Josh
 */
@Named(value = "showMoviesBean")
@SessionScoped
public class showMoviesBean implements Serializable {

    @EJB
    private movieDBEJB movieDBEJB;
    private Theaters theater;
    private Movies movies;
    private Movietimes oneMovieTime;
    private List<Movietimes> movietimes;
    private int noOfTickets;
    private String selectedTime;
    private String creditCardNumber;
    public showMoviesBean() {
    }
    
    //Getters and setters

    public Theaters getTheater() {
        return theater;
    }

    public void setTheater(Theaters theater) {
        this.theater = theater;
    }

    public Movies getMovies() {
        return movies;
    }

    public void setMovies(Movies movies) {
        this.movies = movies;
    }

    public List<Movietimes> getMovietimes() {
        return movietimes;
    }

    public void setMovietimes(List<Movietimes> movietimes) {
        this.movietimes = movietimes;
    }

    public int getNoOfTickets() {
        return noOfTickets;
    }

    public void setNoOfTickets(int noOfTickets) {
        this.noOfTickets = noOfTickets;
    }

    public Movietimes getOneMovieTime() {
        return oneMovieTime;
    }

    public void setOneMovieTime(Movietimes OneMovieTime) {
        this.oneMovieTime = OneMovieTime;
    }

    public String getSelectedTime() {
        return selectedTime;
    }

    public void setSelectedTime(String selectedTime) {
        this.selectedTime = selectedTime;
    }

    public String getCreditCardNumber() {
        return creditCardNumber;
    }

    public void setCreditCardNumber(String creditCardNumber) {
        this.creditCardNumber = creditCardNumber;
    }
    
    //Gets the movie list for the selected theater and stores it
    public String showMovies()
    {
        FacesContext fc = FacesContext.getCurrentInstance();
        Map<String, String> params = fc.getExternalContext().getRequestParameterMap();
        String aid = params.get("tid");
        int theaID = Integer.parseInt(aid);
        theater = movieDBEJB.getTheaterObj(theaID);
        return "ShowMovies.xhtml?faces-redirect=true";
    }
    // Does the same as above
     public Collection<Movies> getMovieList()
    {
        
        return movieDBEJB.getMoviesForTID(theater.getTid());
       
    }   
     
     //Sets the selected movie as the movie for the object 
    public String showMovieInfo(Movies movie)
    {
        this.movies = movie;
        return "MovieInfo.xhtml?faces-redirect=true";
    }
    
    //Gets a list of movie times for the selected movie and stores it as a list
    public String showMovieTimes()
    {
        int mid = movies.getMid();
        int tid = theater.getTid();
        movietimes = movieDBEJB.getShowTimes(theater, movies);
        return "Showings.xhtml?faces-redirect=true";
    }
    
    //Stores the selected times and returns the next page's address
    public String goToTicketSelection(Movietimes mt)
    {

        this.oneMovieTime = mt;
        return "SelectTickets.xhtml?faces-redirect=true";
    }
    
    //Gets the price for the selected number of tickets
    public int getPrice()
    {
        return this.noOfTickets * 10;
    }
    
    //Validates the credit card for length
    public void validateCC(FacesContext context, UIComponent comp, Object value) throws ValidatorException
    {
        String cc = (String) value;
        
        if(cc.length() != 16)
        {
            FacesMessage message = new FacesMessage("Invalid Credit Card number, Credit Card Numbers must be 16 digits");
            throw new ValidatorException(message);
        }
    }
}
