/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.segvek.taskmanager.service.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Panas
 */
public class FixingAcount extends Model {

    private String date;
    private User user;
    private List<FixingHashAcount> fha = new ArrayList<>();

    public FixingAcount(String date, User user, Long id) {
        super(id);
        this.date = date;
        this.user = user;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<FixingHashAcount> getFha() {
        return fha;
    }

    public void setFha(List<FixingHashAcount> fha) {
        this.fha = fha;
    }

}
