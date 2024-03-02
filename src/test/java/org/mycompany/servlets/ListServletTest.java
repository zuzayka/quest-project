package org.mycompany.servlets;

import jakarta.servlet.http.HttpServletRequest;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mycompany.entities.User;
import org.mycompany.model.UserModel;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;


class ListServletTest {

    HttpServletRequest request = mock(HttpServletRequest.class);
    UserModel model = UserModel.getInstance();

    @BeforeEach
    void addUser() {
        if (model.namesList().size() < 1) {
            model.add(new User("TestUser"));
            model.setKeyName("TestUser");
        }
    }

    @Test
    void requestTest() {
        when(request.getParameter("param")).thenReturn("paramValue");
        assertEquals(request.getParameter("param"), "paramValue");
    }

    @Test
    void userModelTest() {
        assertEquals(model.namesList().size(), 1);
    }

    @Test
    void keyNameTest() {
        assertEquals(model.getKeyName(), "TestUser");
    }

    @Test
    void patienceTest() {
        assertEquals(model.getUserPatience(model.getKeyName()), 30);
    }
}