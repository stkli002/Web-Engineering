<%-- 
    Document   : index
    Created on : 19.06.2017, 12:42:39
    Author     : ExaShox
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Startseite</title>
        <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
        <link href="css/style.css" type="text/css" rel="stylesheet"/>
        <link rel="icon" href="favicon.ico"/>
    </head>
    <body>       
        <div class="container">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">             
                        <button type="button" 
                                class="navbar-toggle collapsed" 
                                data-toggle="collapse" 
                                data-target="#navbar" 
                                aria-expanded="false" 
                                aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>             
                        <a href="KontaktServlet?action=all">
                            <img alt="Logo" height="100" src="img/logo.png"/>
                        </a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="KontaktServlet?action=all">Startseite</a>
                        </li>
                        <li>
                            <a href="Vorstand.html">Vorstand</a>
                        </li>
                        <li>
                            <a href="Formular.jsp">Formular</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <div id="leftside" class="col-lg-2">
                leftside
            </div>

            <div id="center" class="col-lg-8">
                <c:if test="${FormularList != null && !FormularList.isEmpty()}" >
                    <table>
                        <tbody>
                            <tr>
                                <th>Name</th>
                                <th>Datum</th>
                                <th>Link</th>
                            </tr>
                            <c:forEach var="item" items="${FormularList}">
                                <tr>
                                    <td>${item.getFirstname()}</td>
                                    <td>${item.getDate()}</td>
                                    <td><a href="KontaktServlet?action=details&id=${item.getId()}">mehr Infos</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:if>
                </table>
            </div>

            <div id="rightside" class="col-lg-2">
                rightside
            </div>

            <div class="col-lg-12" id="footer">
                <p>
                    Besitzer: Stephan Klimek<br/>
                    Adresse: Donaldduckstr. 42<br/>
                    Tel.: 0815/1337<br/>
                </p>
            </div>
        </div>

        <script src="js/bootstrap.min.js"></script>
    </body>
</html>