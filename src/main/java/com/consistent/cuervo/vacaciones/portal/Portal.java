package com.consistent.cuervo.vacaciones.portal;

import com.liferay.portal.kernel.dao.orm.QueryUtil;
import com.liferay.portal.kernel.model.User;
import com.liferay.portal.kernel.service.UserLocalServiceUtil;

import java.util.List;

public class Portal {
	
	public static List<User> getUsers(){
		List<User> users = UserLocalServiceUtil.getUsers(QueryUtil.ALL_POS, QueryUtil.ALL_POS);
		return users;
	}
}
