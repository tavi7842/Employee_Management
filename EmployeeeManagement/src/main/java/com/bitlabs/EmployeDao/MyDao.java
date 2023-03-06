package com.bitlabs.EmployeDao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bitlabs.EmployeModel.Employer;


@Repository
public class MyDao {
 
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void addEmploye(Employer employe) {
		this.hibernateTemplate.saveOrUpdate(employe);
	}
	
	public List<Employer> getAll(){
		
		List<Employer> list =new ArrayList();
		list=this.hibernateTemplate.loadAll(Employer.class);
		return list;
	}
	public Employer getById(int id) {
		Employer emp=this.hibernateTemplate.get(Employer.class,id);
		return emp;
	}
	
	@Transactional
	public void delete(int id) {
		Employer emp=this.hibernateTemplate.get(Employer.class,id);
		this.hibernateTemplate.delete(emp);
	}

}
