package com.springhb.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import com.mysql.jdbc.Blob;
import com.springhb.bean.UserMasterBean;
import com.springhb.globalEnum.Status;


@Entity
public class UserModel {
	

	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int userid;
	
	@NotEmpty
	private String firstName;
	
	@NotEmpty
	private String lastName;

	@NotEmpty
	private String address;

	@NotEmpty 
	@Size(min=10, max=10) 
	private String phone;

	@NotEmpty
	private String email;
	
	@NotEmpty
	private String dateOfBirth;
	
	
	private Status status;
	
	private String photoname;

	private byte[] photofile;
	
	
	
	public byte[] getPhotofile() {
		return photofile;
	}


	public void setPhotofile(byte[] photofile) {
		this.photofile = photofile;
	}


	private String contenttype;

	
	public String getPhotoname() {
		return photoname;
	}


	public void setPhotoname(String photoname) {
		this.photoname = photoname;
	}


	public String getContenttype() {
		return contenttype;
	}


	public void setContenttype(String contenttype) {
		this.contenttype = contenttype;
	}

	
	@ManyToOne
	@JoinColumn(name="userRoleId")
	private UserRoleModel userRoleModel;

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public UserRoleModel getUserRoleModel() {
		return userRoleModel;
	}

	public void setUserRoleModel(UserRoleModel userRoleModel) {
		this.userRoleModel = userRoleModel;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}
	
	public UserMasterBean modelToBean()
	{

		UserMasterBean userMasterBean = new UserMasterBean();
		userMasterBean.setFirstName(this.firstName);
		userMasterBean.setLastName(this.lastName);
		userMasterBean.setAddress(this.address);
		userMasterBean.setPhone(this.phone);
		userMasterBean.setEmail(this.email);
		userMasterBean.setDateOfBirth(this.dateOfBirth);
		userMasterBean.setStatus(this.status);
		userMasterBean.setPhotoname(this.photoname);
		userMasterBean.setPhotofile(this.photofile);
		userMasterBean.setContenttype(this.contenttype);
		userMasterBean.setUserId(this.userid);
		
		return userMasterBean;
	}
	
	
	
}
