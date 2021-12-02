/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Josh
 */
@Entity
@Table(name = "MOVIES")
@NamedQueries({
    @NamedQuery(name = "Movies.findAll", query = "SELECT m FROM Movies m"),
    @NamedQuery(name = "Movies.findByMid", query = "SELECT m FROM Movies m WHERE m.mid = :mid"),
    @NamedQuery(name = "Movies.findByName", query = "SELECT m FROM Movies m WHERE m.name = :name"),
    @NamedQuery(name = "Movies.findByLength", query = "SELECT m FROM Movies m WHERE m.length = :length"),
    @NamedQuery(name = "Movies.findByDescription", query = "SELECT m FROM Movies m WHERE m.description = :description")})
public class Movies implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "MID")
    private Integer mid;
    @Size(max = 50)
    @Column(name = "NAME")
    private String name;
    @Size(max = 50)
    @Column(name = "LENGTH")
    private String length;
    @Size(max = 8000)
    @Column(name = "DESCRIPTION")
    private String description;
    @ManyToMany(mappedBy = "moviesCollection")
    private Collection<Theaters> theatersCollection;
    @OneToMany(mappedBy = "mid")
    private Collection<Movietimes> movietimesCollection;

    public Movies() {
    }

    public Movies(Integer mid) {
        this.mid = mid;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Collection<Theaters> getTheatersCollection() {
        return theatersCollection;
    }

    public void setTheatersCollection(Collection<Theaters> theatersCollection) {
        this.theatersCollection = theatersCollection;
    }

    public Collection<Movietimes> getMovietimesCollection() {
        return movietimesCollection;
    }

    public void setMovietimesCollection(Collection<Movietimes> movietimesCollection) {
        this.movietimesCollection = movietimesCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (mid != null ? mid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Movies)) {
            return false;
        }
        Movies other = (Movies) object;
        if ((this.mid == null && other.mid != null) || (this.mid != null && !this.mid.equals(other.mid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Movies[ mid=" + mid + " ]";
    }
    
}
