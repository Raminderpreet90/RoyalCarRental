
  
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title> Login Process</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head>

    <body>

 

        <section id="blog" class="container">
            <div class="center">
                <h1>Login Process Page</h1>
                <%-- Java class used to verify email and password stored in the database --%>
                <%@page import="rentalCar.AdminLoginDao"%>
                <%-- Java class containing setter and getter methods for all the varibles of database fields --%>
                <jsp:useBean id="bean" class="rentalCar.User"/>
                <%-- Create an object of LoginBean  --%>
                <jsp:setProperty property="*" name="bean"/>

                <%
             String str ="";
                    if (str == "error") { %>
                <div class="alert alert-danger" role="alert">
                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                    <strong> Error:</strong> Email address or password does not match
                </div>
                <%  } 
                else if (str == "exception") { %>
                <div class="alert alert-danger" role="alert">
                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                    <strong> Exception:</strong>
                </div>
                <% } else if (str == "In-Active") { %>
                <div class="alert alert-danger" role="alert">
                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                    <strong> Alert:</strong> You account has been deactivated by Admin
                </div>
                <% } else { %>
                <div class="alert alert-success" role="alert">
                    <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                    <strong> Success:</strong> You have been successfully logged-in
                    <%
                            
                            String[] ary = str.split("-");
                            session.setAttribute("userid", ary[0]);
                            session.setAttribute("type", ary[1]);
                            session.setAttribute("name", ary[2]);
                    %>
                        <jsp:forward page="admin-welcome.jsp" />
                    <% }%>
                </div>                 
            </div>
        </section>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/wow.min.js"></script>
    </body>
</html>