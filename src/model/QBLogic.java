package model;

import dao.queryDAO;

public class QBLogic {
	public void execute01 (QueryBeans QB) {
		queryDAO qDAO = new queryDAO();
		qDAO.create(QB);
	}

}
