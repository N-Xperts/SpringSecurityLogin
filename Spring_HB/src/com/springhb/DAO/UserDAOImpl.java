package com.springhb.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springhb.bean.UserMasterBean;
import com.springhb.globalEnum.Status;
import com.springhb.model.UserAccountModel;
import com.springhb.model.UserModel;
import com.springhb.model.UserRoleModel;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveUserModel(UserModel userModel) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(userModel);
	}

	@Override
	public void saveUserAccountModel(UserAccountModel userAccountModel) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(userAccountModel);
	}

	@Override
	public void saveUserRoleModel(UserRoleModel userRoleModel) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(userRoleModel);
	}
	
	@Override
	public UserRoleModel getUserRoleByUserName(String userName) {
		// TODO Auto-generated method stub
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserRoleModel.class);
		criteria.add(Restrictions.eq("userAccountModel.userName", userName));
		return (UserRoleModel) criteria.uniqueResult();
	}
	
	@Override
	public UserModel getUserModelByUserId(int userid) {
		// TODO Auto-generated method stub
		return (UserModel)sessionFactory.getCurrentSession().get(UserModel.class, userid);
	}
	
	@Override
	public UserAccountModel getUserAcnByUserName(String userName) {
		// TODO Auto-generated method stub
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserAccountModel.class);
		criteria.add(Restrictions.eq("userName", userName));
		return (UserAccountModel) criteria.uniqueResult();
	}

	@Override
	public List<UserModel> viewUser() {
		// TODO Auto-generated method stub
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserModel.class);
		criteria.add(Restrictions.ne("status",Status.delete));
		return criteria.list();
	}

	@Override
	public void deleteUser(int userid) {
		// TODO Auto-generated method stub
		
		UserModel userModel = getUserModelByUserId(userid);
		
		sessionFactory.getCurrentSession().delete(userModel);
		
	}

	

	
	
	
}
