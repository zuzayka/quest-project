package org.mycompany.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.apache.maven.model.Model;
import org.mycompany.entities.User;
import org.mycompany.model.UserModel;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/list")
public class ListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserModel model = UserModel.getInstance();
        List<String> names = model.namesList();
        String keyNameServlet = req.getParameter("param");;
        if (keyNameServlet != null) {
            model.setKeyName(keyNameServlet);
        } else {
            model.setKeyName("keyNameServlet == null");
        }
        req.setAttribute("userNames", names);
        req.setAttribute("userNameFromServlet", model.getKeyName());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("web-pages/list.jsp");
        requestDispatcher.forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserModel model = UserModel.getInstance();
        List<String> names = model.namesList();
        String keyNameServlet = req.getParameter("param");
        model.setKeyName(keyNameServlet);
        req.setAttribute("userNames", names);
        model.setKeyName(keyNameServlet);
        Integer servletPatience = model.getUserPatience(model.getKeyName());
        req.setAttribute("userNameFromServlet", model.getKeyName());
        req.setAttribute("patienceFromServlet", servletPatience);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("web-pages/list.jsp");
        requestDispatcher.forward(req, resp);
    }
}