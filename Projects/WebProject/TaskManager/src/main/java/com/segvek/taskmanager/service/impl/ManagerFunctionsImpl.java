package com.segvek.taskmanager.service.impl;

import com.segvek.taskmanager.service.Function;
import com.segvek.taskmanager.service.ManagerFunction;
import com.segvek.taskmanager.service.ManagerFunctions;
import com.segvek.taskmanager.service.util.SpringUtil;
import java.util.Iterator;
import java.util.Set;

/**
 *
 * @author Panasenco
 */
public class ManagerFunctionsImpl implements ManagerFunctions {

    Set<ManagerFunction> managersFunction;

    public ManagerFunctionsImpl() {
        Object tempObj = SpringUtil.getInstance().getBean("managersFunction");
        if (tempObj instanceof Set) {
            managersFunction = (Set<ManagerFunction>) tempObj;
        } else {
            throw new ExceptionInInitializerError("НЕ соответствие типов");
        }
    }

    @Override
    public boolean isProcesses(String nameTag) {
        Iterator iterator = managersFunction.iterator();
        while (iterator.hasNext()) {
            if (((ManagerFunction) iterator.next()).isProcesses(nameTag)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Function getFunction(String nameTag) throws Exception {
        Iterator iterator = managersFunction.iterator();
        while (iterator.hasNext()) {
            ManagerFunction manager = (ManagerFunction) iterator.next();
            if (manager.isProcesses(nameTag)) {
                return manager.getFunction();
            }
        }
        return null;
    }

}
