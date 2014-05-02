package com.rural;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserHandler extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static String INSERT = "/employeeinformation.jsp";
	private static String Edit = "/employeeedit.jsp";
	private static String UserRecord = "/listEmpInformation.jsp";
	private UserDao dao;

	public UserHandler() {
		super();
		dao = new UserDao();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String redirect = "";
		String uId = request.getParameter("empId");
		String action = request.getParameter("action");
		
		if (!((uId) == null) && action.equalsIgnoreCase("insert")) {
			// int id = Integer.parseInt(uId);
			EmployeeBean user = new EmployeeBean();
			user.setEmpid(uId);
			// user.setEmpname(request.getParameter()));
			// user.setlName(request.getParameter("lastName"));
			// dao.addUser(user);
			redirect = UserRecord;
			request.setAttribute("users", dao.getAllUsers());
			System.out.println("Record Added Successfully");
		} 
		
		
		else if (action.equalsIgnoreCase("delete")) {
			String userId = request.getParameter("userId");
			int uid = Integer.parseInt(userId);
			dao.removeUser(uid);
			redirect = UserRecord;
			request.setAttribute("users", dao.getAllUsers());
			System.out.println("Record Deleted Successfully");
		}
		
		else if (action.equalsIgnoreCase("editform")) {
			redirect = Edit;
		} 
		
		else if (action.equalsIgnoreCase("edit")) {
			String userId = request.getParameter("userId");
			int uid = Integer.parseInt(userId);
			EmployeeBean user = new EmployeeBean();
			/*
			 * user.setId(uid);
			 * user.setfName(request.getParameter("firstName"));
			 * user.setlName(request.getParameter("lastName"));
			 * dao.editUser(user);
			 */request.setAttribute("user", user);
			redirect = UserRecord;
			System.out.println("Record updated Successfully");
		} else if (action.equalsIgnoreCase("listUser")) {
			redirect = UserRecord;
			request.setAttribute("users", dao.getAllUsers());
		} else {
			redirect = INSERT;
		}

		RequestDispatcher rd = request.getRequestDispatcher(redirect);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
