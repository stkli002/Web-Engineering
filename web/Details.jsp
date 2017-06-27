<%-- 
    Document   : Details
    Created on : 19.06.2017, 11:20:37
    Author     : ExaShox
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Details</title>
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
            <h1>Detail</h1>

            <jsp:useBean id="FormularData" class="Model.Kontaktformular" scope="session" />
            <jsp:setProperty name="FormularData" property="firstname"/>
            <jsp:setProperty name="FormularData" property="lastname"/>
            <jsp:setProperty name="FormularData" property="date"/>
            <jsp:setProperty name="FormularData" property="description"/>
            <jsp:setProperty name="FormularData" property="message"/>

            <ul >
                <li style="list-style: none">Vorname: <jsp:getProperty name="FormularData" property="firstname"/></li>
                <li style="list-style: none">Nachname: <jsp:getProperty name="FormularData" property="lastname"/></li>
                <li style="list-style: none">Datum: <jsp:getProperty name="FormularData" property="date"/></li>
                <li style="list-style: none">Grund: <jsp:getProperty name="FormularData" property="description"/></li>
                <li style="list-style: none">Text: <jsp:getProperty name="FormularData" property="message"/></li>
            </ul>
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