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
public class MockDatabase {

    private static MockDatabase database = new MockDatabase();

    public static MockDatabase getInstance() {
        return database;
    }

    List<User> users = new ArrayList();

    public MockDatabase() {
        User user1 = new User("Vanya", "Vanya@mail.com", "loginVanya", "hashpassVanya", 0L);
        Acount acount1 = new Acount("кошелёк", "Здесь бутут фиксироваться состояния наличніх стредств", 0L);
        acount1.setUser(user1);
        user1.getAcounts().add(acount1);

        Acount acount2 = new Acount("кредитка", "Здесь бутут фиксироваться состояния стредств на карте", 1L);
        acount2.setUser(user1);
        user1.getAcounts().add(acount2);

        for (int i = 0; i < 50; i++) {
            FixingAcount fixingAcount1 = new FixingAcount("09.07.199" + i, user1, new Long(i));
            FixingHashAcount fha1 = new FixingHashAcount(acount1, fixingAcount1, Math.cos(2.0 * i) * 10, new Long(i));
            fixingAcount1.getFha().add(fha1);
            user1.getFixingsAcounts().add(fixingAcount1);
            acount1.getFha().add(fha1);
            if (i >= 3) {
                FixingHashAcount fha2 = new FixingHashAcount(acount2, fixingAcount1, -Math.sin(3.0 * i) * i * i, new Long(i));
                fixingAcount1.getFha().add(fha2);
                acount2.getFha().add(fha2);
            }
        }

        users.add(user1);
    }

    public User getUserById(int id) {
        return users.get(id);
    }
}
