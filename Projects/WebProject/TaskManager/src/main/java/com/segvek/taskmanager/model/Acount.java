/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.segvek.taskmanager.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Panas
 */
public class Acount extends Model {
    private String name;
    private String annitation;
    private List<FixingHashAcount> fha = new ArrayList<>();
    private User user;

    public Acount(String name, String annitation, Long id) {
        super(id);
        this.name = name;
        this.annitation = annitation;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAnnitation() {
        return annitation;
    }

    public void setAnnitation(String annitation) {
        this.annitation = annitation;
    }

    public List<FixingHashAcount> getFha() {
        return fha;
    }

    public void setFha(List<FixingHashAcount> fha) {
        this.fha = fha;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
