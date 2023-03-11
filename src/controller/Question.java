package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.QBLogic;
import model.QueryBeans;
import model.setParameter;

/**
 * Servlet implementation class Question
 */
@WebServlet("/Question")
public class Question extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		String forwardPath = "";
		if (action == null) {
			forwardPath = "/WEB-INF/jsp/order.jsp";
		} else if (action.equals("done")) {
			QueryBeans QB = (QueryBeans)session.getAttribute("QB");
			QBLogic qbLogic = new QBLogic();
			qbLogic.execute01(QB);
			forwardPath = "/WEB-INF/jsp/queryDone.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPath);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//sessionスコープインスタンスの取得
		HttpSession session = request.getSession();
		setParameter setParameter = new setParameter();
		QueryBeans QB = setParameter.execute02(request);

		String option = request.getParameter("option");
		if(option.equals("Q1")) {
			QB.setOption("プランについて");
		} else if (option.equals("Q2")){
			QB.setOption("注文方法について");
		}else {
			QB.setOption("その他");
		}

		session.setAttribute("QB", QB);

		String forwardPath = "/WEB-INF/jsp/queryCheck.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPath);
		dispatcher.forward(request, response);
	}

}
