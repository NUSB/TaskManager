/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.segvek.taskmanager;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/**
 *
 * @author Panas
 */
public class Utils {

    public static ArrayList<MapItem> convertMapToArrayList(Map<String, Double> map) {
        ArrayList<MapItem> list = new ArrayList<>();
        Iterator<Map.Entry<String, Double>> entries = map.entrySet().iterator();
        while (entries.hasNext()) {
            Map.Entry<String, Double> entry = entries.next();
            list.add(new MapItem(entry.getKey(), entry.getValue()));
        }
        return list;
    }

    public static class MapItem {

        private String key;
        private Double value;

        public MapItem(String key, Double value) {
            this.key = key;
            this.value = value;
        }

        public String getKey() {
            return key;
        }

        public void setKey(String key) {
            this.key = key;
        }

        public Double getValue() {
            return value;
        }

        public void setValue(Double value) {
            this.value = value;
        }
    }
}
