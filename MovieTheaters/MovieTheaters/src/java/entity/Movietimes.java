/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Josh
 */
@Entity
@Table(name = "MOVIETIMES")
@NamedQueries({
    @NamedQuery(name = "Movietimes.findAll", query = "SELECT m FROM Movietimes m"),
    @NamedQuery(name = "Movietimes.findBySid", query = "SELECT m FROM Movietimes m WHERE m.sid = :sid"),
    @NamedQuery(name = "Movietimes.findByShowtimes", query = "SELECT m FROM Movietimes m WHERE m.showtimes = :showtimes"),
    @NamedQuery(name = "Movietimes.findByMidAndTid", query = "SELECT m FROM Movietimes m WHERE m.tid = :tid and m.mid = :mid")})
public class Movietimes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "SID")
    private Integer sid;
    @Size(max = 10)
    @Column(name = "SHOWTIMES")
    private String showtimes;
    @JoinColumn(name = "MID", referencedColumnName = "MID")
    @ManyToOne
    private Movies mid;
    @JoinColumn(name = "TID", referencedColumnName = "TID")
    @ManyToOne
    private Theaters tid;

    public Movietimes() {
    }

    public Movietimes(Integer sid) {
        this.sid = sid;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getShowtimes() {
        return showtimes;
    }

    public void setShowtimes(String showtimes) {
        this.showtimes = showtimes;
    }

    public Movies getMid() {
        return mid;
    }

    public void setMid(Movies mid) {
        this.mid = mid;
    }

    public Theaters getTid() {
        return tid;
    }

    public void setTid(Theaters tid) {
        this.tid = tid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (sid != null ? sid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Movietimes)) {
            return false;
        }
        Movietimes other = (Movietimes) object;
        if ((this.sid == null && other.sid != null) || (this.sid != null && !this.sid.equals(other.sid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Movietimes[ sid=" + sid + " ]";
    }
    
}
