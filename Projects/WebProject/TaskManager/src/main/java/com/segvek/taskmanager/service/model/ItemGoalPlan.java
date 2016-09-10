/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.segvek.taskmanager.service.model;

import java.util.List;

/**
 *
 * @author Panas
 */
public class ItemGoalPlan extends Model {

    private String name;
    private String anotattion;
    private String beginDate;
    private String endDate;

    private Acount count;
    private List<FixingItemPlan> fixings;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAnotattion() {
        return anotattion;
    }

    public void setAnotattion(String anotattion) {
        this.anotattion = anotattion;
    }

    public String getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(String beginDate) {
        this.beginDate = beginDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public Acount getCount() {
        return count;
    }

    public void setCount(Acount count) {
        this.count = count;
    }

    public List<FixingItemPlan> getFixings() {
        return fixings;
    }

    public void setFixings(List<FixingItemPlan> fixings) {
        this.fixings = fixings;
    }

}
