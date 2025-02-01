package org.moffatbay;

import java.io.Serializable;
import java.sql.*;
import com.password4j.*;

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
	
	public static ResultSet checkLogin(String email) throws ClassNotFoundException, SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
	        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/MoffatBay","root","Summertime250!");
	        PreparedStatement statement = connection.prepareStatement("SELECT * from Login WHERE email = ?");
	        statement.setString(1, email);
	        resultSet = statement.executeQuery();
		} catch (SQLException e){
			System.out.println(e);
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		}
        
        return resultSet;
	}
	
	public static void registerLogin(String email, String password) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
	        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/MoffatBay","root","Summertime250!");
	        PreparedStatement statement = connection.prepareStatement("INSERT INTO Login(Email, Password) VALUES(?, ?)");
	        statement.setString(1, email);
	        statement.setString(2, password);
	        statement.executeUpdate();
		} catch (SQLException e){
			System.out.println(e);
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		}
	}
	
	public static void registerUser(String firstName, String lastName, String phone, String email, String password) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
	        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/MoffatBay","root","Summertime250!");
	        PreparedStatement statement = connection.prepareStatement("INSERT INTO Registration(FirstName, LastName, PhoneNumber, Email, Password) VALUES(?, ?, ?, ?, ?)");
	        statement.setString(1, firstName);
	        statement.setString(2, lastName);
	        statement.setString(3, phone);
	        statement.setString(4, email);
	        statement.setString(5, password);
	        statement.executeUpdate();
		} catch (SQLException e){
			System.out.println(e);
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		}
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
