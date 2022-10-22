//package dao;
//
//
//import jdbc.Util;
//
//import java.sql.*;
//import java.util.*;
//import java.util.stream.Collectors;
//
//public class Dao {
//
//    public static Map<String,Integer> getrc()
//    {
//        String sql="select * from lunwen";
//        Map<String, Integer>map= new HashMap<String, Integer>();
//        Map<String, Integer>results= new LinkedHashMap<String, Integer>();
//        Connection con=null;
//        Statement state=null;
//        ResultSet rs=null;
//        Util jdbc= new Util();
//        con=jdbc.getConnection();
//        try {
//            state=con.createStatement();
//            rs=state.executeQuery(sql);
//            while(rs.next())
//            {
//                String keywords=rs.getString("keywords");
//                String[] split = keywords.split(",");
//                for(int i=0;i<split.length;i++)
//                {
//                    if(map.get(split[i])==null)
//                    {
//                        map.put(split[i],0);
//                    }
//                    else
//                    {
//                        map.replace(split[i], map.get(split[i])+1);
//                    }
//                }
//            }
//        } catch (SQLException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//        jdbc.releaseConn();
//        map.entrySet()
//                .stream()
//                .sorted((p1, p2) -> p2.getValue().compareTo(p1.getValue()))
//                .collect(Collectors.toList())
//                .forEach(ele -> results.put(ele.getKey(), ele.getValue()));
//
//
//        return results;
//    }
//
//}