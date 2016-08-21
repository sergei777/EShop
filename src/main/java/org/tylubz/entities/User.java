package org.tylubz.entities;

import javax.persistence.*;
import java.sql.Date;
import java.util.List;

/**
 * Created by Sergei on 20.08.2016.
 */
@Entity
@Table(name = "user")
public class User {

    @Id
    @Column(name = "id")
    private int id;

    @Basic
    @Column(name = "first_name")
    private String firstName;

    @Basic
    @Column(name = "second_name")
    private String secondName;

    @Basic
    @Column(name = "birthDate")
    private Date birthDate;

    @Basic
    @Column(name = "email")
    private String email;

    @Basic
    @Column(name = "password")
    private String password;

    @OneToMany(mappedBy = "user")
    private List<Order> orders;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }
}
