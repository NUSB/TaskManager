/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.segvek.taskmanager.service.functions.functionTest;

import com.segvek.taskmanager.service.Function;

/**
 *
 * @author Panas
 */
public class TestFunction implements Function {

    @Override
    public String processes(String xml) throws Exception {
        return "true";
    }

}
