<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.DbConnector"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.OutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

        <script src="https://kit.fontawesome.com/914dec405b.js"></script>
        <link rel="stylesheet" href="style.css" /><title>Home</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>

            if (window.history.forward(1) != null)
                window.history.forward(1);
        </script>
        
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

        <form method="post" action="checkOutProcess.jsp">
            <div class="container col-7 col-md-6 col-sm-8 mt-5">

                <div class="form-group">
                    <label for="exampleInputPassword1">First name</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" name="fname" placeholder="" required>
                    <label for="exampleInputPassword1">Last name</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" name="lname"placeholder="" required>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="" required>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">City</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" name="city" placeholder="" required>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">State</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" name="state" placeholder="" required>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Phone number</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" name="phone" placeholder="" required>
                </div>

                <div class="form-group">
                    <label for="exampleFormControlFile1">Input payment slip</label>
                    <input type="file" class="form-control-file" name="slip" id="exampleFormControlFile1" required>
                </div>

                <button type="submit" value="submit" class="btn btn-outline-dark">Submit</button>
        </form>
<% 
           if (request.getParameter("status") != null) {
            String status = request.getParameter("status");
                if(status.equals("0")){
            %>
           <!-- <h1>success</h1>-->
           <script>
                swal("Successfully!", "Your order has been placed!", "success");
            </script>
       <% }else{%>
            <script>
                swal("Unccessfully!", "An error occured!", "error");
            </script>
        <% } }%>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </body>
</html>