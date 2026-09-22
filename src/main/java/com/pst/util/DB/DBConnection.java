package com.pst.util.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {

        Connection con = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                "jdbc:mysql://gateway01.ap-northeast-1.prod.aws.tidbcloud.com:4000/flip?sslMode=REQUIRED&enabledTLSProtocols=TLSv1.2",
                "2J2wJTF7x3wPsnw.root",
                "Yn3lT6BxbdE8VJIA"
            );

            System.out.println("✅ DB Connected");
            System.out.println("DB URL = " + con.getMetaData().getURL());

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}