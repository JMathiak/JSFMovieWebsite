/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import ejb.movieDBEJB;
import entity.Theaters;
import entity.Movies;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author Josh
 */
@Named(value = "getMovieTheaters")
@SessionScoped
public class getMovieTheaters implements Serializable{

    @EJB
    private movieDBEJB movieDBEJB;
    private String zipCode;
    private List<Theaters> Theaters;
    public getMovieTheaters() {
    }
    
    //Getters and setters

    public movieDBEJB getMovieDBEJB() {
        return movieDBEJB;
    }

    public void setMovieDBEJB(movieDBEJB movieDBEJB) {
        this.movieDBEJB = movieDBEJB;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }
    
    public String showMovieTheaters()
    {
       
        return "Theaters.xhtml";
    }

    public List<Theaters> getTheaters() {
        return Theaters;
    }

    public void setTheaters(List<Theaters> Theaters) {
        this.Theaters = Theaters;
    }
    
    // Gets the theater list for the entered zipcode and stores the list. 
    public String showTheaters()
    {
        FacesContext fc = FacesContext.getCurrentInstance();
        Map<String, String> params = fc.getExternalContext().getRequestParameterMap();
        String zipCodes = params.get("zipCode");
        Theaters = movieDBEJB.getTheaters(zipCode);
        setTheaters(Theaters);
        return "Theaters.xhtml?faces-redirect=true";
    }
    
}
    

