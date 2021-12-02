/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import entity.Movies;
import entity.Movietimes;
import entity.Theaters;
import java.util.Collection;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Josh
 */
@Stateless
public class movieDBEJB {

    @PersistenceContext(unitName = "MovieTheatersPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }
    
   
    //Gets theater list for the passed zipcode and returns it
    public List<Theaters> getTheaters(String zipCode) {
        return em.createNamedQuery("Theaters.findByZipcode", Theaters.class)
                .setParameter("zipcode", zipCode)
                .getResultList();
    }

  
    //Gets the movie list of the selected theater with the passed 
    public Collection<Movies> getMoviesForTID(int tID) {
        Theaters thea = em.find(Theaters.class, tID);
        return thea.getMoviesCollection();
    }
    
    //Gets a single theater object for the passed theater ID
    public Theaters getTheaterObj(int tID) {
        return em.createNamedQuery("Theaters.findByTid", Theaters.class)
                .setParameter("tid", tID)
                .getSingleResult();
    }
    
    //Gets a list of movietimes for the selected theater and movie.
    public List<Movietimes> getShowTimes(Theaters tID, Movies mID) {
        return em.createNamedQuery("Movietimes.findByMidAndTid", Movietimes.class)
                .setParameter("tid", tID)
                .setParameter("mid", mID)
                .getResultList();
    }
}
