<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Customer</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous">
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
            crossorigin="anonymous"></script>
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
            crossorigin="anonymous"></script>
    <style type="text/css">
        .col-md-2 {
            background-color: #DDDDDD;
        }

        .sidebar {
            margin: 0;
            padding: 0;
            width: 200px;
            background-color: silver;
            color: white;
            position: fixed;
            height: 100%;
            overflow: auto;
        }

        .sidebar h2 {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 50px;
            background-color: cadetblue;
        }

        .container-fluid {
            margin-left: 200px;
            padding: 1px 16px;
            height: 1000px;
        }

        .navbar {
            margin-left: 200px;
        }

        .search-form .row {
            margin-left: 30px;
        }
    </style>
</head>
<body>
<div class="sidebar">
    <h2 class="text-center">CUSTOMER</h2>
    <div style="margin-left:30px;">
        <a href="http://localhost:8080/Final2_war_exploded/index" style="text-decoration: none;color:black;">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list"
                 viewBox="0 0 16 16">
                <path fill-rule="evenodd"
                      d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
            </svg>
            List</a>
    </div>

</div>

<div class="wrapper">
    <nav class="navbar navbar-expand-md bg-light">
        <div class="search-form">
            <form action="http://localhost:8080/Final2_war_exploded/search" method="get">

                <table>
                    <div class="row">
                        <div class="col">
                            <label class="m-2">Name: </label>
                        </div>
                        <div class="col-6">
                            <input type="text" class="form-control" name="name" placeholder="Enter name ... " aria-label="a" required="Textbox must be entered">
                        </div>
                        <div class="col">
                            <button class="btn btn-primary">Search</button>
                        </div>
                    </div>
                </table>
            </form>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h1>Thông tin</h1>
                <table class="table table-striped">
                    <tr>
                        <td>ID</td>
                        <td>NAME</td>
                        <td>AGE</td>
                        <td>ADDRESS</td>
                    </tr>
                    <c:forEach var="item" items="${cus}">
                        <tr>
                            <td>${item.getId() }</td>
                            <td>${item.getName() }</td>
                            <td>${item.getAge() }</td>
                            <td>${item.getAddress() }</td>
                        </tr>

                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>