package blog.servlets;

import db.Blogs;
import db.DBConnection;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(value = "/blogdetails")
public class BlogDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long blogId = 0L;

        try{

            blogId = Long.parseLong(request.getParameter("id"));

        }catch (Exception e){
            e.printStackTrace();
        }
        Blogs blog = DBConnection.getBlog(blogId);

        request.setAttribute("blog", blog);
        request.getRequestDispatcher("/blogdetails.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
