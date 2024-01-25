package com.usermanagment.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.usermanagment.dao.UserDao;
import com.usermanagment.dao.UserDaoImpl;
import com.usermanagment.model.User;

/**
 * Servlet implementation class AddUserServlet
 */
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int i=Integer.parseInt(request.getParameter("uid"));
		String n=request.getParameter("uname");
		String e=request.getParameter("uemail");
		String c=request.getParameter("ucountry");
		
		User u=new User(i, n, e, c);
		UserDao ud=new UserDaoImpl();
		    int res=ud.insertUserData(u);
		if(res>0)
		{
			request.getRequestDispatcher("ListAllUsers.jsp").forward(request, response);
		}
		else{
			out.print("try again!!");
			request.getRequestDispatcher("ListAllUsers.jsp").include(request, response);
			
		}
			}

}
