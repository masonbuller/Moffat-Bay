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
    	String sql = "INSERT INTO Room (Bed_type, Cost) VALUES ('Queen', 141.75), ('Double Full Beds', 126), ('Double Queen Beds', 157.5), ('King', 168)";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println(e);
    }
    
	//Insert data into login table
    
    try {
    	String sql = "INSERT INTO Login VALUES ('joemi23@hotmail.com', 'purple23'), ('hellokitty@gmail.com', 'pinkonpink'), ('emoses@aol.com', 'techclub')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println(e);
    } 
	
    
  //Insert data into registration table
    try {
    	String sql = "INSERT INTO Registration(FirstName, LastName, PhoneNumber, Email, Password) VALUES ('Joseph', 'Miller', '555-433-9020', 'joemi23@hotmail.com', 'purple23')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println(e);
    }
    try {
    	String sql = "INSERT INTO Registration(FirstName, LastName, PhoneNumber, Email, Password) VALUES ('Ana', 'Frank', '555-323-2099', 'hellokitty@gmail.com', 'pinkonpink')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println(e);
    }
    try {
    	String sql = "INSERT INTO Registration(FirstName, LastName, PhoneNumber, Email, Password) VALUES ('Elizabeth', 'Moses', '555-549-0456', 'emoses@aol.com', 'techclub')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println(e);
    }
    
    //Insert data into reservation table
    try {
    	String sql = "INSERT INTO Reservation(Check_In, Check_Out, Guest_Amt, Total_Cost, CustomerID, RoomID) VALUES ('2025-04-06', '2025-04-11', 4, 758.06, 4000, 001), ('2025-06-15', '2025-06-20', 2, 674.1, 4001, 002), ('2025-09-23', '2025-09-30', 2, 1179.23, 4002, 003)";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println(e);
    }
   
    
    //Insert data into ContactUs table
    try {
    	String sql = "INSERT INTO ContactUs(Email, PhoneNumber, FormText) VALUES ('evensteven@hotmail.com', '555-032-1234', 'Are there scenic views?')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println(e);
    }
    try {
    	String sql = "INSERT INTO ContactUs(Email, PhoneNumber, FormText) VALUES ('hellokitty@gmail.com', '555-230-9999', 'Is there a playgroung?')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println(e);
    }
    try {
    	String sql = "INSERT INTO ContactUs(Email, PhoneNumber, FormText) VALUES ('disneyfun@aol.com', '555-320-8585', 'Do you have a reception hall for a wedding?')";
    	stmt.executeUpdate(sql);
    } catch (SQLException e) {
    	System.out.println(e);
    }
    
    
%>
</body>
</html>