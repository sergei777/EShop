package org.tylubz.entities;

import javax.persistence.*;

/**
 * Created by Sergei on 20.08.2016.
 */
@Entity
@Table(name = "clientaddress")
public class ClientAddress {

    @Id
    @Column(name = "id")
    private int id;

    @Basic
    @Column(name = "country")
    private String country;

    @Basic
    @Column(name = "city")
    private String city;

    @Basic
    @Column(name = "postcode")
    private Integer postcode;

    @Basic
    @Column(name = "street_name")
    private String streetName;


    @Basic
    @Column(name = "house_number")
    private Integer houseNumber;

    @Basic
    @Column(name = "door")
    private Integer door;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Integer getPostcode() {
        return postcode;
    }

    public void setPostcode(Integer postcode) {
        this.postcode = postcode;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public Integer getHouseNumber() {
        return houseNumber;
    }

    public void setHouseNumber(Integer houseNumber) {
        this.houseNumber = houseNumber;
    }

    public Integer getDoor() {
        return door;
    }

    public void setDoor(Integer door) {
        this.door = door;
    }
}
