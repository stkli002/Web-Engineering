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
        <link href="css/style.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div id="top">
            <img height="100" src="img/logo.png"/>
            <ul>
                <li><a href="KontaktServlet?action=all">Startseite</a></li>
                <li><a href="Vorstand.html">Vorstand</a></li>
                <li><a href="Formular.jsp">Formular</a></li>
            </ul>
        </div>

        <div id="leftside">
            leftbar
        </div>

        <div id="center">
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

    <div id="rightside">
        rightbar
    </div>

    <div id="footer">
        <p>
            Besitzer: Stephan Klimek<br/>
            Adresse: Donaldduckstr. 42<br/>
            Tel.: 0815/1337<br/>
        </p>
    </div>
</body>
</html>