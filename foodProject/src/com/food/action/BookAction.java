package com.food.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.food.dao.BookDao;
import com.food.dao.SqlConnection;
import com.food.model.Book;
import com.food.model.Customer;
import com.mysql.jdbc.Statement;
import com.opensymphony.xwork2.ActionSupport;
@Controller @Scope("prototype")
public class BookAction extends ActionSupport implements SessionAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Resource BookDao bookdao;
	private String name;
	private Integer type;
	private String author;
	private String press;
	private Double oriprice;
	private Double price;
	private String tel;
	private Integer newDeg;
	private String seilorText;
	private File bookphoto;
	private String bookphotoname;
	private Integer bookid;
	 private String bookphotoContentType;


	public String getBookphotoContentType() {
		return bookphotoContentType;
	}
	public void setBookphotoContentType(String bookphotoContentType) {
		this.bookphotoContentType = bookphotoContentType;
	}
	public Integer getBookid() {
		return bookid;
	}
	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}
	private Map<String,Object> session;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPress() {
		return press;
	}
	public void setPress(String press) {
		this.press = press;
	}
	public Double getOriprice() {
		return oriprice;
	}
	public void setOriprice(Double oriprice) {
		this.oriprice = oriprice;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getTel() {
		return tel;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getNewDeg() {
		return newDeg;
	}
	public void setNewDeg(Integer newDeg) {
		this.newDeg = newDeg;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSeilorText() {
		return seilorText;
	}
	public void setSeilorText(String seilorText) {
		this.seilorText = seilorText;
	}

	
	public File getBookphoto() {
		return bookphoto;
	}
	public void setBookphoto(File bookphoto) {
		this.bookphoto = bookphoto;
	}
	public String getBookphotoname() {
		return bookphotoname;
	}
	public void setBookphotoname(String bookphotoname) {
		this.bookphotoname = bookphotoname;
	}
	public String insert() throws Exception
	{
		Book book=new Book();
		bookid=bookdao.selectLatest();
		if(bookid==null)
		{
			bookid=0;
		}
		Customer customer=(Customer)session.get("customer");
		book.setCustomerid(customer.getCustomerid());
		book.setAuthor(author);
		book.setBookname(name);
		if(type==1) {
			book.setBooktype("理工类");
		}else if(type==2) {
			book.setBooktype("文史类");
		}else if(type==3) {
			book.setBooktype("IT类");
		}else if(type==4) {
			book.setBooktype("考研用书");
		}else if(type==5) {
			book.setBooktype("考级用书");
		}else if(type==6) {
			book.setBooktype("课外书籍");
		}else if(type==7) {
			book.setBooktype("公共必修类");
		}else if(type==8) {
			book.setBooktype("其他");
		}
		else {
			book.setBooktype("其他");
		}
		//book.setImg(bookphoto);
		addBookphoto(book);
		if(newDeg==1) {
			book.setNote("几乎全新");
		}else if(newDeg==2) {
			book.setNote("轻微勾画");
		}else if(newDeg==3) {
			book.setNote("大量笔记");
		}else if(newDeg==4) {
			book.setNote("不影响阅读");
		}
		else {
			book.setNote("不影响阅读");
		}
		
		book.setOriprice(this.oriprice);
		book.setPrice(price);
		book.setPress(press);
		book.setBookid((int)bookid+1);
		SqlConnection con=new SqlConnection();
		String sql="insert into book(bookid,img,bookname,booktype,note,author,press,oriprice,price,customerid) "
				+ "values("+(bookid+1)+",'"+book.getImg()+"','"+name+"','"+book.getBooktype()+"','"+book.getNote()+"','"+author+"','"
				+press+"',"+oriprice+","+price+","+customer.getCustomerid()
				+")";
		try {
			System.out.println(sql);
			java.sql.Statement sta=con.con.createStatement();
			sta.executeUpdate(sql);
		} catch (SQLException e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		return showAll();
	}
	private ArrayList<Book> booklist;
	
	public ArrayList<Book> getBooklist() {
		return booklist;
	}
	public void setBooklist(ArrayList<Book> booklist) {
		this.booklist = booklist;
	}
	public String showAll()
	{
		booklist=bookdao.selectAll();
			return "show";
	}
	public String showSearch()
	{
		booklist=bookdao.searchByName(name);
		System.out.println(name);
		return "showSearch";
	}
	public String searchByType()
	{
		booklist=bookdao.searchByType(type);
		System.out.println(type);
		return "showClass";
	}
	public String showMyPost()
	{
		Customer customer=(Customer)session.get("customer");
		booklist=bookdao.selectMyPost(customer.getCustomerid());
		return "showMyPost";
	}
	public String delete()
	{
		bookdao.delete(bookid);
		return showMyPost();
	}
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		session=arg0;
		
	}
	public String addBookphoto(Book book) throws Exception{
		System.out.println("我进来了！");
		String path = ServletActionContext.getServletContext().getRealPath("/image"); 
        /*澶勭悊鍥剧墖涓婁紶*/
        String bookphotoname = ""; 
   	 	if(bookphoto!= null) {
   	 		System.out.println(bookphoto);
   	 		InputStream is = new FileInputStream(bookphoto);
   			String fileContentType = this.getBookphotoContentType();
   			System.out.println(fileContentType);
   			if(fileContentType.equals("image/jpeg")  || fileContentType.equals("image/pjpeg"))
   				bookphotoname = UUID.randomUUID().toString() +  ".jpg";
   			else if(fileContentType.equals("image/gif"))
   				bookphotoname = UUID.randomUUID().toString() +  ".gif";
   			else if(fileContentType.equals("image/png"))
   				bookphotoname = UUID.randomUUID().toString() +  ".png";

   			File file = new File(path, bookphotoname);
   			OutputStream os = new FileOutputStream(file);
   			byte[] b = new byte[1024];
   			int bs = 0;
   			while ((bs = is.read(b)) > 0) {
   				os.write(b, 0, bs);
   			}
   			is.close();
   			os.close();
   	 	}
   	 	System.out.println("image/" + bookphotoname);
        if(bookphoto != null)
        	book.setImg("image/" + bookphotoname);
        else
        	book.setImg("image/NoImage.jpg");
        
		//foodDao.AddFood(food);
		return "message";
		
	}
	

}
