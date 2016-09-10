/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.segvek.taskmanager.service.model;

/**
 *
 * @author Panas
 */
public class FixingHashAcount extends Model {

    private Acount acount;
    private FixingAcount fixing;
    private Double value;

    public FixingHashAcount(Acount acount, FixingAcount fixing, Double value, Long id) {
        super(id);
        this.acount = acount;
        this.fixing = fixing;
        this.value = value;
    }

    public Acount getAcount() {
        return acount;
    }

    public void setAcount(Acount acount) {
        this.acount = acount;
    }

    public FixingAcount getFixing() {
        return fixing;
    }

    public void setFixing(FixingAcount fixing) {
        this.fixing = fixing;
    }

    public Double getValue() {
        return value;
    }

    public void setValue(Double value) {
        this.value = value;
    }

}
