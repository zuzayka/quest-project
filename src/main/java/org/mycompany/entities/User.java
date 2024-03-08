package org.mycompany.entities;

import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang3.builder.ToStringBuilder;

@Setter
@Getter
public class User {
    private final static int START_PATIENCE = 30;
    private final static int START_TEST_KEY = 0;
    private String name;
    private String password;
    private int patience;
    private int testKey;

    public User() {
    }

    public User(String name, String password) {
        this.name = name;
        this.password = password;
        this.patience = START_PATIENCE;
        this.testKey = START_TEST_KEY;
    }

    public User(String name) {
        this.name = name;
        this.patience = START_PATIENCE;
        this.testKey = START_TEST_KEY;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("name", name)
                .append("password", password)
                .append("patience", patience)
                .append("testKey", testKey)
                .toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o)
            return true;
        if (o == null || getClass() != o.getClass())
            return false;

        User user = (User) o;

        if (name != null ? !name.equals(user.name) : user.name != null)
            return false;
        return password != null ? password.equals(user.password) : user.password == null;

    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + (password != null ? password.hashCode() : 0);
        return result;
    }

    public static void main(String[] args) {
        User user = new User("Vasya");
        System.out.println(user.getName());
    }
}
