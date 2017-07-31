package com.springhb.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;


@Entity
public class UserAccountModel implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column
	private String userName;

	@Column
	private String password;
	
	@Column
	private String rePassword;
	
	public enum status{
		active,deactive,delete
	}
	
	@OneToOne(mappedBy="userAccountModel")
	@Cascade(CascadeType.ALL)
	private UserRoleModel userRoleModel;
	
	@Column(nullable= false,columnDefinition="TINYINT(1)")
	private boolean status;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRePassword() {
		return rePassword;
	}

	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}

	public UserRoleModel getUserRoleModel() {
		return userRoleModel;
	}

	public void setUserRoleModel(UserRoleModel userRoleModel) {
		this.userRoleModel = userRoleModel;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
