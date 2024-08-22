package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.distribuida.entities.Autor;
import com.distribuida.entities.Categoria;

@Repository
public class AutorDAOImpl implements AutorDAO {
	
	//SELECT * FROM Autor --> SQL
	//from Autor -->HQL
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	@Transactional
	public List<Autor> findAll() {
		// TODO Auto-generated method stub
		
		Session session = sessionFactory.getCurrentSession();
	
		return session.createQuery("from Autor",Autor.class).getResultList();
	}

	@Override
	public Autor findOne(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(Autor.class, id);
	}

	@Override
	public void add(Autor autor) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(autor);
	}

	@Override
	public void up(Autor autor) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(autor);
	}

	@Override
	public void del(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(findOne(id));  // retorna un objeto de tipo cliente
	}

}
