package com.springhb.DAO;

import java.util.List;

import com.springhb.bean.UserMasterBean;
import com.springhb.model.UserAccountModel;
import com.springhb.model.UserModel;
import com.springhb.model.UserRoleModel;

public interface UserDAO {
	
	
	public void saveUserModel(UserModel userModel);
	
	public void saveUserAccountModel(UserAccountModel userAccountModel);
	
	public void saveUserRoleModel(UserRoleModel userRoleModel);
	
	public UserRoleModel getUserRoleByUserName(String userName);
	
	public List<UserModel> viewUser();
	
	public UserModel getUserModelByUserId(int userid);
	
	public UserAccountModel getUserAcnByUserName(String userName);
	
	public void deleteUser(int userid);
	
	

}
