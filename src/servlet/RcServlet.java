package servlet;

import dao.tabledao;
import domain.counts;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

@WebServlet("/RcServlet")
public class RcServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String colname=(String)request.getSession().getAttribute("i");
        tabledao barDao = new tabledao();
        ArrayList<counts> barArr = null;  //调用BarDao的query方法。返回一个从数据库中读取之后的集合
        try {
            barArr = barDao.yun(colname);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        response.setContentType("text/html;charset=utf-8");
        JSONArray json = JSONArray.fromObject(barArr);   //将ArrayList对象转化为JSON对象，因为Echarts前台只能识别JSONArray，不能识别ArrayList类型
        //返回到jsp
        PrintWriter writer = response.getWriter();


        writer.println(json);
        writer.flush();
        writer.close(); //关闭输出流
    }

}
