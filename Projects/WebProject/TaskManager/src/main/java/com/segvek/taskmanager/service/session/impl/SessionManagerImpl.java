/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.segvek.taskmanager.service.session.impl;

import com.segvek.taskmanager.service.util.SpringUtil;
import com.segvek.taskmanager.service.session.Session;
import com.segvek.taskmanager.service.session.SessionManager;
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
    public Session createSession() {
        Object tempObj = SpringUtil.getInstance().getBean("session");
        Session session;
        if (tempObj instanceof Session) {
            session = new SessionImpl();
        } else {
            throw new ExceptionInInitializerError("Не соответсвие типов при инициализации");
        }
        arraySessison.put("" + session.getIdSession(), session);
        return session;
    }

    @Override
    public boolean closeSession(String id) {
        return arraySessison.remove(id) != null;
    }
}
