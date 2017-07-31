package com.springhb.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.springhb.DAO.UserDAO;
import com.springhb.bean.UserMasterBean;
import com.springhb.globalEnum.Status;
import com.springhb.model.UserAccountModel;
import com.springhb.model.UserModel;
import com.springhb.model.UserRoleModel;

@Service
@Transactional(readOnly=false,propagation=Propagation.REQUIRED)
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveUserModel(UserModel userModel) {
		// TODO Auto-generated method stub
		userDAO.saveUserModel(userModel);
	}



	@Override
	public void saveUserAccountModel(UserAccountModel userAccountModel) {
		// TODO Auto-generated method stub
		userDAO.saveUserAccountModel(userAccountModel);
	}



	@Override
	public void saveUserRoleModel(UserRoleModel userRoleModel) {
		// TODO Auto-generated method stub
		userDAO.saveUserRoleModel(userRoleModel);
	}

	@Override
	public UserRoleModel getUserRoleByUserName(String userName) {
		// TODO Auto-generated method stub
		return userDAO.getUserRoleByUserName(userName);
	}
	
	@Override
	public UserModel getUserModelByUserId(int userid) {
		// TODO Auto-generated method stub
		return userDAO.getUserModelByUserId(userid);
	}
	
	@Override
	public UserAccountModel getUserAcnByUserName(String userName) {
		// TODO Auto-generated method stub
		return userDAO.getUserAcnByUserName(userName);
	}

	
	@Override
	public void saveUser(UserMasterBean userMasterBean) {
		// TODO Auto-generated method stub
		
		System.out.println("fname=="+userMasterBean.getFirstName());
		System.out.println("lname=="+userMasterBean.getLastName());
		System.out.println("add=="+userMasterBean.getAddress());
		System.out.println("email=="+userMasterBean.getEmail());
		System.out.println("phone=="+userMasterBean.getPhone());
		System.out.println("dob=="+userMasterBean.getDateOfBirth());
		System.out.println("uname=="+userMasterBean.getUserName());
		System.out.println("pw=="+userMasterBean.getPassword());
		System.out.println("rpw=="+userMasterBean.getRePassword());
		System.out.println("role=="+userMasterBean.getRole());
		if (userMasterBean.getUserId() == 0) {
		
			System.out.println("inside if");
		UserModel userModel = new UserModel();
		UserAccountModel userAccountModel = new UserAccountModel();
		UserRoleModel userRoleModel = new UserRoleModel();
	
		//set account info
		userAccountModel.setUserName(userMasterBean.getUserName().trim());
		userAccountModel.setPassword(userMasterBean.getPassword());
		userAccountModel.setStatus(true);
		userAccountModel.setRePassword(userMasterBean.getRePassword());
		userAccountModel.setUserRoleModel(userRoleModel);
		
		userRoleModel.setUserRoleName(userMasterBean.getRole());
		userRoleModel.setUserAccountModel(userAccountModel);
		
		saveUserAccountModel(userAccountModel);
		
		//set personal info
		userModel.setFirstName(userMasterBean.getFirstName());
		userModel.setLastName(userMasterBean.getLastName());
		userModel.setAddress(userMasterBean.getAddress());
		userModel.setEmail(userMasterBean.getEmail());
		userModel.setPhone(userMasterBean.getPhone());
		userModel.setDateOfBirth(userMasterBean.getDateOfBirth());
		userModel.setUserRoleModel(getUserRoleByUserName(userMasterBean.getUserName()));
		userModel.setContenttype(userMasterBean.getFile().getContentType());
		try {
			userModel.setPhotofile(userMasterBean.getFile().getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		userModel.setPhotoname(userMasterBean.getFile().getName());
		
		userModel.setStatus(Status.active);
		saveUserModel(userModel);
		
		}
		else
		{
			System.out.println("inside else");
			
			UserModel userModel =getUserModelByUserId(userMasterBean.getUserId());
			UserAccountModel userAccountModel =getUserAcnByUserName(userMasterBean.getUserName().trim());
			UserRoleModel userRoleModel = getUserRoleByUserName(userMasterBean.getUserName().trim());
		
			//set account info
			userAccountModel.setUserName(userMasterBean.getUserName());
			userAccountModel.setPassword(userMasterBean.getPassword());
			userAccountModel.setStatus(true);
			userAccountModel.setRePassword(userMasterBean.getRePassword());
			userAccountModel.setUserRoleModel(userRoleModel);
			
			userRoleModel.setUserRoleName(userMasterBean.getRole());
			userRoleModel.setUserAccountModel(userAccountModel);
			
			saveUserAccountModel(userAccountModel);
			
			//set personal info
			userModel.setFirstName(userMasterBean.getFirstName());
			userModel.setLastName(userMasterBean.getLastName());
			userModel.setAddress(userMasterBean.getAddress());
			userModel.setEmail(userMasterBean.getEmail());
			userModel.setPhone(userMasterBean.getPhone());
			userModel.setDateOfBirth(userMasterBean.getDateOfBirth());
			userModel.setUserRoleModel(getUserRoleByUserName(userMasterBean.getUserName()));
			userModel.setContenttype(userMasterBean.getFile().getContentType());
			try {
				userModel.setPhotofile(userMasterBean.getFile().getBytes());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			userModel.setPhotoname(userMasterBean.getFile().getName());
			
			saveUserModel(userModel);
			
			}
		}
			
		
		



	@Override
	public List<UserMasterBean> viewUser() {
		// TODO Auto-generated method stub
		List<UserMasterBean> list= new ArrayList<>();
		for(UserModel model:userDAO.viewUser()){
			list.add(model.modelToBean());
		}
		return list;
	}



	@Override
	public void deleteUser(int userid) {
		// TODO Auto-generated method stub
		
		userDAO.deleteUser(userid);
		
	}



	











	
}
