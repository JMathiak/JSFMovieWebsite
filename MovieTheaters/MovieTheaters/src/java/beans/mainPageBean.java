/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import ejb.movieDBEJB;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.ValidatorException;

/**
 *
 * @author Josh
 */
@Named(value = "mainPageBean")
@RequestScoped
public class mainPageBean {

    @EJB
    private movieDBEJB movieDBEJB;
    private String zipString;
    
    public mainPageBean() {
    }

    public movieDBEJB getMovieDBEJB() {
        return movieDBEJB;
    }

    public void setMovieDBEJB(movieDBEJB movieDBEJB) {
        this.movieDBEJB = movieDBEJB;
    }

    public String getZipString() {
        return zipString;
    }

    public void setZipString(String zipString) {
        this.zipString = zipString;
    }
    public String showTheaters(String zip)
    {
        this.zipString = zip;
        return "Theaters";
    }
    
    //Validates the entered zip code for length and that it's a zipcode that exists in the database
    public void validateZip(FacesContext context, UIComponent comp, Object value) throws ValidatorException
    {
        String zipCode = (String) value;
        int lengthOfZip = zipCode.length();
        String[] validZips = new String[3];
        validZips[0] = "75035";
        validZips[1] = "75025";
        validZips[2] = "98101";
        if(lengthOfZip != 5){
            FacesMessage message = new FacesMessage("Invalid Zip Code! Please enter a zip code that is 5 digits long!");
            throw new ValidatorException(message);
        }
        if(!zipCode.equals(validZips[0])&& !zipCode.equals(validZips[1]) && !zipCode.equals(validZips[2]))
        {
            FacesMessage message = new FacesMessage("No Movie Theaters Found for The Entered Zip Code! Zip Codes with Theaters are: 75025, 75035, and 98101");
            throw new ValidatorException(message);
        }
        
    }
    
}
