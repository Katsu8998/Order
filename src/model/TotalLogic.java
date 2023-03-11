package model;

import java.util.List;

import dao.salesDAO;

public class TotalLogic {
	public int execute(OrderBeans order) {
		//totalbeansから合計金額を算出

		int karubi = order.getKarubinum() * 350;
		int ros = order.getRosnum() * 400;
		int harami = order.getHaraminum() * 400;
		int tan = order.getTannum() * 600;
		int rice = order.getRicenum() * 200;
		int veg = order.getVegnum() * 800;

		return karubi + ros + harami + tan + rice + veg;

	}


	public void execute02(OrderBeans order) {
		salesDAO dao = new salesDAO();
		dao.create(order);
	}

	public List<OrderBeans> execute03() {
		salesDAO dao = new salesDAO();
		List<OrderBeans> order = dao.findAll();
		return order;
	}
}
