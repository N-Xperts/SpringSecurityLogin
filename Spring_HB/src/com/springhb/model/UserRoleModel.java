package com.springhb.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class UserRoleModel {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer userRoleId;
	
	@OneToOne
	@JoinColumn(name="userName")
	private UserAccountModel userAccountModel;
	
	@Column
	private String userRoleName;

	public Integer getUserRoleId() {
		return userRoleId;
	}

	public void setUserRoleId(Integer userRoleId) {
		this.userRoleId = userRoleId;
	}

	public UserAccountModel getUserAccountModel() {
		return userAccountModel;
	}

	public void setUserAccountModel(UserAccountModel userAccountModel) {
		this.userAccountModel = userAccountModel;
	}

	public String getUserRoleName() {
		return userRoleName;
	}

	public void setUserRoleName(String userRoleName) {
		this.userRoleName = userRoleName;
	}
	
	
}
