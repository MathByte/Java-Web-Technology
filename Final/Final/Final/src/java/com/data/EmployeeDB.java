/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.data;

import java.sql.*;
import java.util.ArrayList;
//import com.data.DBUtil;

public class EmployeeDB {

    public static ArrayList<Employee> selectEmployees() {
        //Connection connection = DBUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM Employee";
        try {
           // ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            ArrayList<Employee> employees = new ArrayList<Employee>();
            while (rs.next()) {
                Employee employee = new Employee();
                employee.setEmployeeId(rs.getInt("employeeId"));
                employee.setFullName(rs.getString("fullName"));
                //employee.setPosition(rs.getString("position"));
                employee.setStartDate(rs.getDate("startDate"));
                employees.add(employee);
            }
           // connection.close();
            rs.close();
            ps.close();
            return employees;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }

    public static int deleteEmployee(String id) {
       // Connection connection = DBUtil.getConnection();
        PreparedStatement ps = null;
        String query = "DELETE FROM Employee "
                + "WHERE EmployeeID = ?";
        try {
           // ps = connection.prepareStatement(query);
            ps.setString(1, id);
            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static boolean employeeExists(String id) {
       // Connection connection = DBUtil.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT EmployeeID FROM Employee "
                + "WHERE EmployeeID = ?";
        try {
            //ps = connection.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
