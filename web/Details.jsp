<%-- 
    Document   : Details
    Created on : 19.06.2017, 11:20:37
    Author     : ExaShox
--%>

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
                        <li>
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