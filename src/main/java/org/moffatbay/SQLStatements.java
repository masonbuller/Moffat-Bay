package org.moffatbay;

import java.io.Serializable;
import java.sql.*;

public class SQLStatements implements Serializable{
	
	static Connection connection = null;
    static Statement statement = null;
    static ResultSet resultSet = null;
    
	public static ResultSet getResultSet(String SQL) throws ClassNotFoundException, SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/MoffatBay","root","Summertime250!");
            statement = connection.createStatement();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        try {
            resultSet = statement.executeQuery(SQL);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return resultSet;
    }
	
	public static ResultSet checkLogin(String email, String password) throws ClassNotFoundException, SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
	        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/MoffatBay","root","Summertime250!");
	        PreparedStatement statement = connection.prepareStatement("SELECT * from Login WHERE email = ? and password = ?");
	        statement.setString(1, email);
	        statement.setString(2, password);
	        resultSet = statement.executeQuery();
		} catch (SQLException e){
			System.out.println(e);
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		}
        
        return resultSet;
	}
	
	
	public static void closeConnection() throws SQLException {
        try {
            statement.close();
            connection.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
}
