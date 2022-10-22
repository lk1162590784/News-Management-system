package servlet;

import dao.tabledao;
import domain.col;
import net.sf.json.JSONArray;
import org.json.JSONObject;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/tablecolsServlet")
public class tablecolsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String colname=(String)request.getSession().getAttribute("i");
        String pageStr=request.getParameter("page");
        String limitStr=request.getParameter("limit");
        int page = Integer.parseInt(pageStr);
        int limit = Integer.parseInt(limitStr);
        System.out.println("page:"+pageStr+"limit::"+limitStr);
        PrintWriter out=response.getWriter();
        System.out.println(colname);
        tabledao tabledao = new tabledao();
        String sql="select * from " + colname;
        System.out.println(sql);
        List<col> collists = null;
        try {
        collists = tabledao.collists(sql);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("code",0);
        jsonObject.put("msg","");
        jsonObject.put("count",collists.size());
        JSONArray result=null;
        try{
            tabledao he=new tabledao();
            result = JSONArray.fromObject(he.collist(sql,page,limit));
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        jsonObject.put("data",result);
        System.out.println(jsonObject.toString());
        out.println(jsonObject.toString());
        out.flush();
        out.close();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);

    }
}
