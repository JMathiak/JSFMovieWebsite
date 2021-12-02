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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
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
@Table(name = "THEATERS")
@NamedQueries({
    @NamedQuery(name = "Theaters.findAll", query = "SELECT t FROM Theaters t"),
    @NamedQuery(name = "Theaters.findByTid", query = "SELECT t FROM Theaters t WHERE t.tid = :tid"),
    @NamedQuery(name = "Theaters.findByName", query = "SELECT t FROM Theaters t WHERE t.name = :name"),
    @NamedQuery(name = "Theaters.findByZipcode", query = "SELECT t FROM Theaters t WHERE t.zipcode = :zipcode")})
public class Theaters implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "TID")
    private Integer tid;
    @Size(max = 50)
    @Column(name = "NAME")
    private String name;
    @Column(name = "ZIPCODE")
    @Size(max = 5)
    private String zipcode;
    @JoinTable(name = "THEATERWITHMOVIES", joinColumns = {
        @JoinColumn(name = "TID", referencedColumnName = "TID")}, inverseJoinColumns = {
        @JoinColumn(name = "MID", referencedColumnName = "MID")})
    @ManyToMany
    private Collection<Movies> moviesCollection;
    @OneToMany(mappedBy = "tid")
    private Collection<Movietimes> movietimesCollection;

    public Theaters() {
    }

    public Theaters(Integer tid) {
        this.tid = tid;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public Collection<Movies> getMoviesCollection() {
        return moviesCollection;
    }

    public void setMoviesCollection(Collection<Movies> moviesCollection) {
        this.moviesCollection = moviesCollection;
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
        hash += (tid != null ? tid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Theaters)) {
            return false;
        }
        Theaters other = (Theaters) object;
        if ((this.tid == null && other.tid != null) || (this.tid != null && !this.tid.equals(other.tid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Theaters[ tid=" + tid + " ]";
    }
    
}
