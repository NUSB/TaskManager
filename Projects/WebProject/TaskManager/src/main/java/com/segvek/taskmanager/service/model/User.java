/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.segvek.taskmanager.service.model;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 *
 * @author Panas
 */
@Entity
@Table(name = "User")
public class User extends Model {

    @Column(name = "name", length = 50)
    private String name;
    private String mail;
    private String login;
    private String hashPass;

    private List<Acount> acounts = new ArrayList<>();
    private List<FixingAcount> fixingsAcounts = new ArrayList<>();

    public User(String name, String mail, String login, String hashPass, Long id) {
        super(id);
        this.name = name;
        this.mail = mail;
        this.login = login;
        this.hashPass = hashPass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getHashPass() {
        return hashPass;
    }

    public void setHashPass(String hashPass) {
        this.hashPass = hashPass;
    }

    public List<Acount> getAcounts() {
        return acounts;
    }

    public void setAcounts(List<Acount> acounts) {
        this.acounts = acounts;
    }

    public List<FixingAcount> getFixingsAcounts() {
        return fixingsAcounts;
    }

    public void setFixingsAcounts(List<FixingAcount> fixingsAcounts) {
        this.fixingsAcounts = fixingsAcounts;
    }

    @Override
    public String toString() {
        return "User{" + "name=" + name + ", mail=" + mail + ", login=" + login + ", hashPass=" + hashPass + ", acounts=" + acounts + ", fixingsAcounts=" + fixingsAcounts + '}';
    }

}
