package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DbConnect;
import com.dao.ContactDAO;
@WebServlet("/delete")
public class DeleteContact extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int cid=Integer.parseInt(req.getParameter("cid"));
		ContactDAO dap=new ContactDAO(DbConnect.getConn());
		boolean f=dap.deleteContactById(cid);
		HttpSession session=req.getSession();
		if(f) {
			session.setAttribute("succMsg", "contact deleted succesgully");
		resp.sendRedirect("viewContact.jsp");
		}else {
			session.setAttribute("failedMsg", "contact not deleted ");
			resp.sendRedirect("viewContact.jsp");
		}
	}

}
