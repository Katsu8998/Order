package model;

import javax.servlet.http.HttpServletRequest;

public class setParameter {
	public OrderBeans execute (HttpServletRequest request) {
		Integer karubi = Integer.valueOf(request.getParameter("karubi"));
		Integer ros = Integer.valueOf(request.getParameter("ros"));
		Integer harami = Integer.valueOf(request.getParameter("harami"));
		Integer tan = Integer.valueOf(request.getParameter("tan"));
		Integer rice = Integer.valueOf(request.getParameter("rice"));
		Integer veg = Integer.valueOf(request.getParameter("veg"));
		OrderBeans OB = new OrderBeans(karubi, ros, harami, tan, rice, veg);
		return OB;
	}

	public QueryBeans execute02 (HttpServletRequest request) {
		String option = request.getParameter("option");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String detail = request.getParameter("detail");
		QueryBeans QB = new QueryBeans(option, name, email, detail);
		return QB;

	}

}
