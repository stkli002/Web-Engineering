<%-- 
    Document   : index
    Created on : 19.06.2017, 12:42:39
    Author     : ExaShox
--%>

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
                <li><a href="index.jsp">Startseite</a></li>
                <li><a href="Details.jsp">Details</a></li>
                <li><a href="Vorstand.html">Vorstand</a></li>
                <li><a href="Formular.jsp">Formular</a></li>
            </ul>
        </div>

        <div id="leftside">
            leftbar
        </div>

        <div id="center">
            <table>
                <tr>
                    <th>Name</th>
                    <th>Datum</th>
                </tr>

                <tr>
                    <td>Heinz</td>
                    <td>01.01.1990</td>
                </tr>
                <tr>
                    <td>Holga</td>
                    <td>14.05.1994</td>
                </tr>
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