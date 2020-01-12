package com.food.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SqlConnection {
	
	   public Connection con = null;
	    private static final String url="jdbc:mysql://localhost:3306/food?useUnicode=true&characterEncoding=utf-8";		
		//閿熸枻鎷烽敓鎹峰尅鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓琛楀嚖鎷烽敓鏂ゆ嫹
	    private static final String user="root";//閿熸枻鎷峰綍閿熸枻鎷�
	    private static final String password="123456";//閿熸枻鎷烽敓鏂ゆ嫹
	    
		public SqlConnection()
		{
	        //1.閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹
	        try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				System.out.println("姝ｅ湪鍔犺浇椹卞姩銆傘�傘��");
	                        //閿熸枻鎷烽敓鎻紮鎷烽敓绲intln閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷锋枑锝忔嫹閿熸枻鎷烽敓鏂ゆ嫹閿熻鍑ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹閿熻鍑ゆ嫹閿熸枻鎷烽敓瑙掑嚖鎷烽敓鏂ゆ嫹閿燂拷
				e.printStackTrace();
			}
			try {
				con = DriverManager.getConnection(url, user, password);
			        System.out.println("杩炴帴鏁版嵁搴撴垚鍔熴�傘�傘��");
			} catch (SQLException e) {
				System.out.println("鏁版嵁搴撹繛鎺ュけ璐ャ�傘�傘��");
	                        //閿熸枻鎷烽敓鎻紮鎷烽敓绲intln閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹閿熺粸褝鎷峰熃閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹閿熻鍑ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹閿熺纰夋嫹褰曢敓鏂ゆ嫹閿熺殕纭锋嫹閿熸枻鎷烽敓鏂ゆ嫹閿熻鍑ゆ嫹閿熸枻鎷烽敓锟�
				e.printStackTrace();
			}
	          
		}
}
