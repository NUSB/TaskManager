/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.segvek.taskmanager.session.impl;

import com.segvek.taskmanager.session.Session;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/**
 *
 * @author Panas
 */
public class SessionImpl implements Session {

    ConcurrentMap<String, Object> arraySessison = new ConcurrentHashMap();

    @Override
    public String getIdSession() {
        return "" + hashCode();
    }

    @Override
    public boolean setAttribute(String key, Object attribute) {
        boolean isAttribute = false;
        isAttribute = arraySessison.get(key) == null;
        arraySessison.put(key, attribute);
        return isAttribute;
    }

    @Override
    public Object getAttribute(String key) {
        return arraySessison.get(key);
    }

    @Override
    public Set getAttributeNames() {
        return arraySessison.keySet();
    }
}
