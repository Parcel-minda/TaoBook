package com.food.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.food.model.Book;
import com.food.model.Food;
@Service @Transactional
public class BookDao {
	@Resource SessionFactory factory;
	@SuppressWarnings("deprecation")
	public void insert(Book record)
	{	
	
		Session s=factory.getCurrentSession();
	
		s.save(record,"Book.class");
		
	
		
	}
	public void delete(Integer bookid)
	{
		Session s=factory.getCurrentSession();
		Book book=(Book) s.load(Book.class, bookid);
		 s.delete(book);
	}
	
	public ArrayList<Book> selectAll(
			)
	{
		  Session s = factory.getCurrentSession();
	        String hql = "From Book";
	        Query q = s.createQuery(hql);
	        List booklist = q.list();
	        return (ArrayList<Book>) booklist;
	}
	public Integer selectLatest(
			)
	{
		  Session s = factory.getCurrentSession();
	        String hql = "select max(bookid) From Book";
	        Query q = s.createQuery(hql);
	        List<Integer> list=q.list();
	        return list.get(0);
	}
	public ArrayList<Book> selectMyPost(Integer customerid)
	{
		Session s = factory.getCurrentSession();
        String hql = "From Book book where book.customerid="+customerid;
        Query q = s.createQuery(hql);
        List booklist = q.list();
        return (ArrayList<Book>) booklist;
	}
	public ArrayList<Book> searchByName(String name)
	{
		Session s = factory.getCurrentSession();
        String hql = "From Book book where book.bookname like '%"+name+"%'";
        Query q = s.createQuery(hql);
        List booklist = q.list();
        return (ArrayList<Book>) booklist;
	}
	public ArrayList<Book> searchByType(Integer type)
	{
		Session s = factory.getCurrentSession();
		String name="IT��";
		if(type==1) {
			name="IT��";
		}else if(type==2) {
			name="����";
		}else if(type==3) {
			name="��ʷ��";
		}
		else if(type==4) {
			name="��������";
		}
		else if(type==5) {
			name="��������";
		}
		else if(type==6) {
			name="�����鼮";
		}
		else if(type==7) {
			name="����������";
		}
		else if(type==8) {
			name="����";
		}
        String hql = "From Book book where book.booktype like '%"+name+"%'";
        Query q = s.createQuery(hql);
        List booklist = q.list();
        return (ArrayList<Book>) booklist;
	}
}
