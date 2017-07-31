package com.springhb.bean;

import java.io.Serializable;
import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Lob;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.jdbc.Blob;
import com.springhb.globalEnum.Status;

@SuppressWarnings("serial")
public class UserMasterBean implements Serializable {
	
	
	
	private int userId;
	
	@NotEmpty
	private String firstName;
	
	@NotEmpty
	private String lastName;

	@NotEmpty
	private String address;

	@NotEmpty
	@Size(max=10)
	private String phone;

	@NotEmpty
	private String email;
	
	@NotEmpty
	private String dateOfBirth;
	
	@NotEmpty
	private String userName;

	@NotEmpty
	private String password;
	
	@NotEmpty
	private String rePassword;
	
	private MultipartFile file;
	
private Status status;
	

	private byte[] photofile;

	private String fileString;
	
	
	
	public String getFileString() {
		if(this.photofile==null){
			return null;
		}
		else{
			return new String(Base64.getEncoder().encode(this.photofile));
		}
	}


	public void setFileString(String fileString) {
		this.fileString = fileString;
	}


	public Status getStatus() {
		return status;
	}


	public void setStatus(Status status) {
		this.status = status;
	}


	public byte[] getPhotofile() {
		return photofile;
	}


	public void setPhotofile(byte[] photofile) {
		this.photofile = photofile;
	}


	public MultipartFile getFile() {
		return file;
	}


	public void setFile(MultipartFile file) {
		this.file = file;
	}


	private String photoname;

	//private Blob file;
	
	private String contenttype;

	
	public String getPhotoname() {
		return photoname;
	}


	public void setPhotoname(String photoname) {
		this.photoname = photoname;
	}


	


/*	public Blob getFile() {
		return file;
	}


	public void setFile(Blob file) {
		this.file = file;
	}
*/

	public String getContenttype() {
		return contenttype;
	}


	public void setContenttype(String contenttype) {
		this.contenttype = contenttype;
	}


	private String role;
	
	
	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
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


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}

	
	public String getRePassword() {
		return rePassword;
	}


	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}


	

}
