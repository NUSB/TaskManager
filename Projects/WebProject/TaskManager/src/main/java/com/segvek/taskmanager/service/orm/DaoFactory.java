package com.segvek.taskmanager.service.orm;

import com.segvek.taskmanager.service.model.User;

/**
 *
 * @author Panas
 */
public class DaoFactory {
    private static DaoFactory daofactory = new DaoFactory();
    public static DaoFactory getFactory(){
        return daofactory;
    }

    private DaoImpl daoUser = new DaoImpl<>(User.class);

    public DaoFactory() {
    }

    public DaoImpl getDaoUser() {
        return daoUser;
    }
}
