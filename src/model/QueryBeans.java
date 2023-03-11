package model;

import java.io.Serializable;

public class QueryBeans implements Serializable{
	private String option;
	private String name;
	private String email;
	private String detail;

	public QueryBeans() {}
	public QueryBeans(String option, String name, String email, String detail) {
		this.option = option;
		this.name = name;
		this.email = email;
		this.detail = detail;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getOption() {
		return option;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getDetail() {
		return detail;
	}


}
