package connectors;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * created by Shankaja
 */

public class PostgreConnector {
    private static PostgreConnector instance = null;
    private Connection connection = null;
    private String host = "128.199.180.172";
    private int postgrePort = 5432;
    private String database = "cdr_test";
    private String username = "postgres";
    private String url = "jdbc:postgresql://" + host + ":" + postgrePort + "/" + database;

    private PostgreConnector() {
    }

    public static PostgreConnector getInstance() {
        if (instance == null) {
            instance = new PostgreConnector();
        }
        return instance;
    }

    public Connection getConnection() throws SQLException {

        System.out.println("-------- PostgreSQL "
                + "JDBC Connection Testing ------------");

        if (connection == null) {
            try {
                Class.forName("org.postgresql.Driver");
            } catch (ClassNotFoundException e) {
                System.out.println("JDBC Driver not found.");
                e.printStackTrace();
            }
            connection = DriverManager.getConnection(url, username, "root");

        }
        try {
            connection.setAutoCommit(true);
        } catch (SQLException e) {
            System.out.println("In the autocommit.");
            e.printStackTrace();
        }
        return connection;
    }
}
