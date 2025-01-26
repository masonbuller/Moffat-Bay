<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>JDBC Connector</title>
</head>
<body>
<%
    Connection con = null;
    Statement stmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/MoffatBay";

        con = DriverManager.getConnection(url,"root","Summertime250!");
        stmt = con.createStatement();

        stmt = con.createStatement();
    } catch (SQLException e) {
        System.out.println("Connection failed");
    }
    

    //Insert data to Room Table
    try {
    	String sql = "INSERT INTO Room VALUES (001, '2 Queens', '150')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert values into Room Table failed");
    }
    try {
    	String sql = "INSERT INTO Room VALUES (002, '1 Queen', '120')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert values into Room Table failed");
    }
    try {
    	String sql = "INSERT INTO Room VALUES (003, '1 King', '200')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert values into Room Table failed");
    }
    
    
    //Insert data into reservation table
    try {
    	String sql = "INSERT INTO Reservation VALUES (01, '2025-04-06', '2025-04-11', 4, '157', 101, 001)";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert into values reservation table failed");
    }
    try {
    	String sql = "INSERT INTO Reservation VALUES (02, '2025-06-15', '2025-06-20', 2, '125', 102, 002)";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert into values reservation table failed");
    }
    try {
    	String sql = "INSERT INTO Reservation VALUES (03, '2025-09-23', '2025-09-30', 2, '223', 103, 003)";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert into values reservation table failed");
    }
    
    
    //Insert data into registration table
    try {
    	String sql = "INSERT INTO Registration VALUES (101, 'Joseph', 'Miller', '555-433-9020', 'joemi23@hotmail.com', 'purple23')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert into values registration table failed");
    }
    try {
    	String sql = "INSERT INTO Registration VALUES (102, 'Ana', 'Frank', '555-323-2099', 'hellokitty@gmail.com', 'pinkonpink')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert into values registration table failed");
    }
    try {
    	String sql = "INSERT INTO Registration VALUES (103, 'Elizabeth', 'Moses', '555-549-0456', 'emoses@aol.com', 'techclub')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert into values registration table failed");
    }
   
    //Insert data into login table
    try {
    	String sql = "INSERT INTO Login VALUES ('joemi23@hotmail.com', 'purple23')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert into values login table failed");
    }
    try {
    	String sql = "INSERT INTO Login VALUES ('hellokitty@gmail.com', 'pinkonpink')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert into values login table failed");
    }
    try {
    	String sql = "INSERT INTO Login VALUES ('emoses@aol.com', 'techclub')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert into values login table failed");
    }
    
    //Insert data into ContactUs table
    try {
    	String sql = "INSERT INTO ContactUs VALUES (1025, 'evensteven@hotmail.com', '555-032-1234', 'Are there scenic views?')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert into vaues contactus table failed");
    }
    try {
    	String sql = "INSERT INTO ContactUs VALUES (1026, 'hellokitty@gmail.com', '555-230-9999', 'Is there a playgroung?')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert into values contactus table failed");
    }
    try {
    	String sql = "INSERT INTO ContactUs VALUES (1027, 'disneyfun@aol.com', '555-320-8585', 'Do you have a reception hall for a wedding?')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println("Insert into values contactus table failed");
    }
    
    
%>
</body>
</html>