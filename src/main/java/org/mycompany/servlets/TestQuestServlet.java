
package org.mycompany.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.mycompany.entities.User;
import org.mycompany.model.UserModel;

import java.io.IOException;

@WebServlet(urlPatterns = "/test-quest")
public class TestQuestServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserModel model = UserModel.getInstance();
        String user = model.getKeyName();
        Integer buttonID = 0;
//        Integer patience = model.getUserPatience(user);
        Integer patienceZulu = model.getUserPatience(user);
        if (req.getParameter("param") != null) {
            buttonID = Integer.parseInt(req.getParameter("param"));
        }
        if (req.getParameter("param2") != null) {
            patienceZulu = Integer.parseInt(req.getParameter("param2"));
        }

        Integer testKey = model.getUserTestKey(user);
        if (buttonID.equals(100)) {
            testKey = 0;
        } else {
            testKey += convertButtonID(buttonID);
        }
        model.setUserTestKey(user, testKey);
        model.setUserPatience(user, patienceZulu);
        req.setAttribute("testKeyFromServlet", testKey);
        req.setAttribute("patienceFromServlet", patienceZulu);
        req.setAttribute("modelKeyFromServlet", UserModel.TEST_KEY);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("web-pages/test-quest.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserModel model = UserModel.getInstance();
        String user = model.getKeyName();
        Integer buttonID = 0;
//        Integer patience = model.getUserPatience(user);
        Integer patienceZulu = model.getUserPatience(user);
        if (req.getParameter("param") != null) {
            buttonID = Integer.parseInt(req.getParameter("param"));
        }
        if (req.getParameter("param2") != null) {
            patienceZulu = Integer.parseInt(req.getParameter("param2"));
        }

        Integer testKey = model.getUserTestKey(user);
        if (buttonID.equals(100)) {
            testKey = 0;
        } else {
            testKey += convertButtonID(buttonID);
        }
        model.setUserTestKey(user, testKey);
        model.setUserPatience(user, patienceZulu);
        req.setAttribute("testKeyFromServlet", testKey);
        req.setAttribute("patienceFromServlet", patienceZulu);
        req.setAttribute("modelKeyFromServlet", UserModel.TEST_KEY);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("web-pages/test-quest.jsp");
        requestDispatcher.forward(req, resp);
    }

    Integer convertButtonID(Integer id) {
        int pow = id / 10;
        int multiplier = id % 10;
        return (int) (multiplier * Math.pow(10, pow));
    }
}
