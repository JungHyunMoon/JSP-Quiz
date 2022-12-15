package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private static MysqlService mysqlService = null;

    private String url = "jdbc:mysql://localhost:3306/test";   // 도메인 뒤에 접속할 DB명까지 적는다.
    private String id = "root";
    private String pw = "root"; // 본인이 설정한 비밀번호를 작성한다.

    private Connection conn = null;
    private Statement statement;
    private ResultSet res;
    
    public static MysqlService getInstance() {
        if (mysqlService == null) {
            mysqlService =  new MysqlService();
        }
        return mysqlService;
    }

	public void connect() {
		
		try {
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_2209?serverTimezone=UTC",
					"root", "root");
			statement = conn.createStatement();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	 public void disconnect() {
	        try {
	            // 연결 끊기
	            statement.close();
	            conn.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    public ResultSet select(String query) throws SQLException {
	        res = statement.executeQuery(query);
	        return res;
	    }

	    public void update(String query) throws SQLException {
	        statement.executeUpdate(query);
	    }

}
