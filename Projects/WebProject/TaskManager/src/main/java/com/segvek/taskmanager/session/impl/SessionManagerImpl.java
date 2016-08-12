/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.segvek.taskmanager.session.impl;

import com.segvek.taskmanager.session.Session;
import com.segvek.taskmanager.session.SessionManager;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/**
 *
 * @author Panas
 */
public class SessionManagerImpl implements SessionManager {

    ConcurrentMap<String, Session> arraySessison = new ConcurrentHashMap();

    @Override
    public Session getSession(String id) {
        return arraySessison.get(id);
    }

    @Override
    public String createSession() {
        Session session = new SessionImpl();
        arraySessison.put("" + session.hashCode(), session);
        return "" + session.hashCode();
    }

    @Override
    public boolean closeSession(String id) {
        return arraySessison.remove(id) != null;
    }
}
