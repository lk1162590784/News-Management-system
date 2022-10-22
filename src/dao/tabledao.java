package dao;

import domain.col;
import domain.counts;

import java.sql.*;
import java.util.*;
import java.util.stream.Collectors;

public class tabledao {
    String FORNAME = "com.mysql.cj.jdbc.Driver";
    String url = "jdbc:mysql:///ciyun?serverTimezone=UTC";
    String user = "root";
    String pwd = "123456";

    public tabledao() {
        try {
            Class.forName(FORNAME);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, user, pwd);
    }
    public List<col> collists(String sql) throws SQLException {
        List<col> col1 = new ArrayList<>();
        Connection c = getConnection();
        PreparedStatement ps = c.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            col ur = new col();
            ur.setTitle(rs.getString("title").trim());
            col1.add(ur);
        }
        ps.close();
        c.close();
        return col1;
    }
    public List<col> collist(String sql,int page,int limits) throws SQLException {
        int start = (page-1)*limits;
        String sql1=sql+ " limit "+start+" ,"+limits;
        System.out.println(sql1);
        List<col> col1 = new ArrayList<>();
        Connection c = getConnection();
        PreparedStatement ps = c.prepareStatement(sql1);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            col ur = new col();
            ur.setTitle(rs.getString("title").trim());
            col1.add(ur);
        }
        ps.close();
        c.close();
        return col1;
    }
    public String connect1(String sql) throws SQLException {
        Connection c = getConnection();
        PreparedStatement ps = c.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        String content =null;
        while (rs.next()) {
            System.out.println(rs.getString("content"));
            content= rs.getString("content");
        }
        return  content;
    }
    public ArrayList<counts> query() throws SQLException {//这里的query()方法是将从数据库中读取到的数据存储到集合中
        ArrayList<counts> barArr=new ArrayList<counts>();
        Connection c = getConnection();
        String sql ="select * from counts";
        PreparedStatement ps = c.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        String content =null;
            while(rs.next()){
                counts bar=new counts();
                bar.setTABLE_NAME(rs.getString("TABLE_NAME"));
                bar.setTABLE_ROWS(rs.getString("TABLE_ROWS"));
                barArr.add(bar);     //将从数据库中读取到的数据 以bar对象的方式存储到 集合中
            }

        return barArr;   //返回该集合
    }
    public ArrayList<counts> yun(String yun) throws SQLException {//这里的query()方法是将从数据库中读取到的数据存储到集合中
        ArrayList<counts> barArr=new ArrayList<counts>();
        Connection c = getConnection();
        String sql ="select * from "+yun;
        PreparedStatement ps = c.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        String content =null;
        while(rs.next()){
            counts bar=new counts();
            bar.setTABLE_NAME(rs.getString("name"));
            bar.setTABLE_ROWS(rs.getString("count"));
            barArr.add(bar);     //将从数据库中读取到的数据 以bar对象的方式存储到 集合中
        }

        return barArr;   //返回该集合
    }

}
