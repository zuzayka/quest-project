package org.mycompany.model;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.mycompany.entities.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class UserModel {
    private static UserModel instance = new UserModel();

    public static final Integer TEST_KEY = 51445;
    private Map<String, User> modelMap;
    private StringBuffer keyName = new StringBuffer("OP");

    private UserModel() {
        modelMap = new HashMap<>();
    }

    public String getKeyName() {
        return keyName.toString();
    }

    public void setKeyName(String string) {
        keyName.replace(0, keyName.length(), string);
    }


    public static UserModel getInstance() {
        return instance;
    }

    public boolean add(User user) {
        for (String string : namesList()) {
            if (string.equals(user.getName())) {
                return false;
            }
        }
        modelMap.put(user.getName(), user);
        return true;
    }

    public List<String> namesList() {
        return modelMap.values().stream()
                .map(User::getName)
                .collect(Collectors.toList());
    }

    public Integer getUserPatience(String name) {
        return modelMap.get(name).getPatience();
    }

    public void setUserPatience(String name, Integer patience) {
        modelMap.get(name).setPatience(patience);
    }

    public Integer getUserTestKey(String name) {
        return modelMap.get(name).getTestKey();
    }

    public void setUserTestKey(String name, Integer testKey) {
        modelMap.get(name).setTestKey(testKey);
    }


    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("modelMap", modelMap)
                .toString();
    }
}

