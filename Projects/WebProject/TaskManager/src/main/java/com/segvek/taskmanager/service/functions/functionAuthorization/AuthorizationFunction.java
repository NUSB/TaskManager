/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.segvek.taskmanager.service.functions.functionAuthorization;

import com.segvek.taskmanager.service.model.User;
import com.segvek.taskmanager.service.Function;
import com.segvek.taskmanager.service.util.SAXParserUtil;
import com.segvek.taskmanager.service.util.SpringUtil;
import com.segvek.taskmanager.service.session.Session;
import com.segvek.taskmanager.service.session.SessionManager;
import java.io.StringReader;
import org.xml.sax.InputSource;

/**
 * При авторизации проходит проверка прав пользователя и в слечае успешной
 * проверки
 * создаеться новая сессия в которой обозначен атрибут user
 *
 * @author Panas
 */
public class AuthorizationFunction implements Function {

    @Override
    public String processes(String xml) throws Exception {
        ParserAuthorization handler = new ParserAuthorization();
        try {
            InputSource source = new InputSource(new StringReader(xml));
            SAXParserUtil.getParser().parse(source, handler);
        } catch (Exception e) {
            e.printStackTrace();
        }
        User user = handler.getUser();

        Object tempObj = SpringUtil.getInstance().getBean("sessionManager");
        SessionManager sessionManager;
        if (tempObj instanceof SessionManager) {
            sessionManager = (SessionManager) tempObj;
        } else {
            throw new ExceptionInInitializerError("Не соответствие типов при инициализации");
        }

        //проверка пользователя должна быть здесь
        Session session = sessionManager.createSession();
        session.setAttribute("user", user);
        return "<authorization><sessionId>" + session.getIdSession() + "</sessionId></authorization>";
    }

}
