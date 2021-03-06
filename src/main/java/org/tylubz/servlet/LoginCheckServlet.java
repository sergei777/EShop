package org.tylubz.servlet;

import org.tylubz.dao.GenericDaoJpaImpl;
import org.tylubz.dao.UserDao;
import org.tylubz.entity.User;
import org.tylubz.service.GenericService;

import javax.persistence.Entity;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Sergei on 03.09.2016.
 */
public class LoginCheckServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDao userDao = new UserDao(UserDao.class);
        User user = userDao.getEntityByUsernameAndPassword("ser","1234");
        req.getSession().setAttribute("username",user.getFirstName());
        req.getRequestDispatcher("/index.jsp").forward(req,resp);
    }
}