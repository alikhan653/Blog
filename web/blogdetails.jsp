<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Blogs" %>
<html>
    <head>
        <title>Title</title>
        <%@include file="head.jsp"%>
    </head>
    <body>
        <div class="container">
            <%@include file="navbar.jsp"%>
        </div>

        <div class="container mt-3">
            <div class="row">
                <div class="col-12">
                    <%
                        Blogs blog = (Blogs) request.getAttribute("blog");
                        if(blog!=null){

                    %>
                        <div class="jumbotron">
                            <h1>
                                <%=blog.getTitle()%>
                            </h1>
                            <p class="lead">
                                <%=blog.getShortContent()%>
                            </p><p class="lead">
                                <%=blog.getContent()%>
                            </p>
                            <hr class="my-4">
                            <p>
                                Posted By <b><%=blog.getAuthor().getFullName()%></b> at <b><%=blog.getPostDate()%></b>
                            </p>
                        </div>
                    <%
                        } else{

                    %>
                        <h1 class="text-center">404 BLOG NOT FOUND</h1>
                    <%
                    }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
