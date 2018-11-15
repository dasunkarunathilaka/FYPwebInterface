package services;

import connectors.PostgreConnector;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class RegisterUsers {
    private String tableName = "users";

    public void userSignup(String username, String password, String name, String role) throws SQLException {

        // Can give a try catch to catch exception and redirect to SignupFailure page.

        Statement statement = PostgreConnector.getInstance().getConnection().createStatement();
        String sql = "INSERT INTO " + tableName + " VALUES ( " + username + ", " + password + ", " + name + ", " + role + ");";
        System.out.println("The SQL statement for registering user : " + sql);
        statement.executeQuery(sql);
    }

    public boolean userLogin(String username, String password) throws SQLException {

        boolean userPresent = false;
        Statement statement = PostgreConnector.getInstance().getConnection().createStatement();
        String sql = "SELECT COUNT(" +username+") FROM "+tableName+ " WHERE (username="+username+" AND password="+ password+");";
        System.out.println("The SQL statement for user login : " + sql);
        ResultSet rs = statement.executeQuery(sql);
        int val =  ((Number) rs.getObject(1)).intValue();

        if (val==1){
            userPresent = true;
            System.out.println("Login user is in the user table.");
        }

        return userPresent;
    }
}
