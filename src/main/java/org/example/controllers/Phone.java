package org.example.controllers;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="block")
public class Phone {
    @Id
    @Column(name="id")
    private int id;

    @Column(name="type")
    private String type;

    @Column(name="amount")
    private int amount;


    public Phone() {
    }

    public Phone(int id, String type, int amount) {
        this.id = id;
        this.type = type;
        this.amount = amount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setName(String type) {
        this.type = type;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

}


