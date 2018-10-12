package connectors;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * created by Shankaja
 */

public class PostgreConnector
{
    private static PostgreConnector instance = null ;
    private Connection connection = null ;
    private String host = "localhost";
    private int postgrePort = 5432;
    private String database = "cdr_test";
    private String username = "postgres";
    private String url = "jdbc:postgresql://"+host+":"+postgrePort+"/"+database;

    private PostgreConnector() {}

    public static PostgreConnector getInstance()
    {
        if (instance == null )
        {
            instance = new PostgreConnector();
        }
        return instance;
    }

    public Connection getConnection() throws SQLException {

        if(connection == null){
            try {
                connection = DriverManager.getConnection(url,username, "root");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        connection.setAutoCommit(true);
        return connection;
    }
}
