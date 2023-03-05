package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.OrderBeans;
import model.TotalLogic;
import model.setParameter;

/**
 * Servlet implementation class OrderServlet
 */

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//セッションスコープインスタンスの取得
		HttpSession session = request.getSession();
		TotalLogic totallogic = new TotalLogic();
		List<OrderBeans> order = totallogic.execute03();
		request.setAttribute("order", order);

		//アプリケーションスコープインスタンスの取得
		ServletContext application = this.getServletContext();

		String action = request.getParameter("action");
		String forwardPath = "";

		if (action == null) {
			forwardPath = "/WEB-INF/jsp/order.jsp";
		} else if (action.equals("done")) {
			forwardPath = "/WEB-INF/jsp/setOrder.jsp";
		} else if (action.equals("payDone")) {
			forwardPath = "/WEB-INF/jsp/setPay.jsp";
			OrderBeans OP = (OrderBeans) session.getAttribute("OB");
			TotalLogic totalLogic = new TotalLogic();
			int total = totalLogic.execute(OP);
			OP.setTotal(total);
			totalLogic.execute02(OP);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPath);
		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		//sessionスコープインスタンスの取得
		HttpSession session = request.getSession();

		//アプリケーションスコープインスタンスの取得
		ServletContext application = this.getServletContext();

		//合計金額算出
		String order = request.getParameter("order");
		String forwardPath = "";
		setParameter setParameter = new setParameter();
		TotalLogic totalLogic = new TotalLogic();

		//ボタン-nameパラメータ
		switch (order) {
		case "注文":
			OrderBeans OB = setParameter.execute(request);
			session.setAttribute("OB", OB);
			forwardPath = "/WEB-INF/jsp/orderCheck.jsp";

		break;

		case "お会計":
			OrderBeans OP = (OrderBeans) session.getAttribute("OB");

			int total = totalLogic.execute(OP);
			OP.setTotal(total);
			application.setAttribute("pay", OP);
			forwardPath = "/WEB-INF/jsp/payCheck.jsp";
		break;

		case "売上確認":
			OrderBeans OS = (OrderBeans) session.getAttribute("OB");
			List<OrderBeans> beans = totalLogic.execute03();
			 application.setAttribute("sale", beans);
			forwardPath = "/WEB-INF/jsp/saleCheck.jsp";

	}

		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPath);
		dispatcher.forward(request, response);
	}

}
