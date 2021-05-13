package spms.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dao.CompanyDao;
import spms.vo.Company;

@SuppressWarnings("serial")
@WebServlet("/job/company/detail")
public class CompanyDetailServlet extends HttpServlet {
	
	@Override 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		ServletContext sc = this.getServletContext();
		CompanyDao companyDao = (CompanyDao)sc.getAttribute("companyDao");
		
		try {			
			
			int no = Integer.parseInt(req.getParameter("com_index"));
			
			Company companyNo = companyDao.selectDetail(no);
			req.setAttribute("companyNo", companyNo);
			
			RequestDispatcher rd = req.getRequestDispatcher("CompanyDetail.jsp");
			rd.include(req, resp);
			
		} catch(Exception e) {
			req.setAttribute("error", e);
			RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
			rd.forward(req, resp);
		}

		
	}

}
